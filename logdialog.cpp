#include "logdialog.h"
#include "ui_logdialog.h"
#include <stdio.h>
#include <thread>
#include <unistd.h>
LogDialog::LogDialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::LogDialog)
{
    ui->setupUi(this);
    setWindowTitle("SharpVPN-Log");
}

LogDialog::~LogDialog()
{
    delete ui;
}
int LogDialog::init_log_file(int fd) {
    std::thread([fd, this](){
        int pd = fd;
        char buf[1500];
        int r;
        while (true) {
            r = read(pd, buf, 1500);
            if (r <= 0)
                continue;
            buf[r] = 0;
            ui->log->append(QString(buf));
        }
    }).detach();
}
