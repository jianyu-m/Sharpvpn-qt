#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <string>
#include <iostream>
#include <thread>
#include <unistd.h>

namespace c_file {
    extern "C" int close(int __fd);
}


MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    setWindowTitle("SharpVPN");
    args = SharpVpn::parse_file_args("/etc/sharpvpn.json");
    std::stringstream ss_server;
    ss_server << args.bind_host << ":" << args.bind_port;
    ui->server->setText(ss_server.str().c_str());
    ui->password->setText(QString(args.encryption_key.c_str()));
    std::stringstream ss_download;
    ss_download<<args.download_speed;
    ui->download->setText(QString(ss_download.str().c_str()));
    std::stringstream ss_upload;
    ss_upload << args.upload_speed;
    ui->upload->setText(QString(ss_upload.str().c_str()));

    if (args.chinadns_host != "") {
        ui->chinadns->setCheckState(Qt::Checked);
    } else {
        ui->chinadns->setCheckState(Qt::Unchecked);
    }

    pipe(pd);
    c_file::close(STDOUT_FILENO);
    c_file::close(STDERR_FILENO);
    dup2(pd[1], STDOUT_FILENO);
    dup2(pd[1], STDERR_FILENO);
    log_win.init_log_file(pd[0]);
}

void MainWindow::start() {
    std::string server_port = ui->server->text().toStdString();
    std::string server;
    int port;
    for (int i = 0;i < server_port.length();i++) {
        if (server_port[i] == ':') {
            server = server_port.substr(0, i);
            if (server_port.length() <= i + 1) {
                return;
            }
            port = QString(server_port.substr(i+1, server_port.length() - i - 1).c_str()).toInt();
        }
    }
    args.encryption_key = ui->password->text().toStdString();
    args.download_speed = ui->download->text().toInt();
    args.upload_speed = ui->upload->text().toInt();
    args.bind_host = server;
    args.bind_port = port;
    if (ui->chinadns->checkState() == Qt::Checked) {
        args.chinadns_host = "127.0.0.1";
    } else {
        args.chinadns_host = "";
    }
    vpn = new SharpVpn(args);
    SharpVpn::refresh_args_file(args, "/home/maxxie/sharp.json");
    int runnable = vpn->init();
    if (runnable == 0)
        ui->statusBar->showMessage("tunnel initialization succeed... ", 3);
    std::thread([this, runnable](){
        if (runnable == 0)
            vpn->run();
        else {
            ui->statusBar->showMessage("tunnel initialization failed", 3);
        }
    }).detach();
    std::thread([this](){
        sleep(2);
        if (vpn->get_status() == 1) {
            ui->statusBar->showMessage("vpn running");
        }
    }).detach();
}

void MainWindow::stop(){
    if (vpn != nullptr && vpn->get_status() == 1) {
        vpn->stop();
        ui->statusBar->showMessage("vpn stoped", 3);
    }
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::start_log() {
    this->log_win.show();
}
