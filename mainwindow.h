#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include "Sharpvpn/src/SharpVpn.h"
#include "logdialog.h"
namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private:
    Ui::MainWindow *ui;
    SharpVpn *vpn;
    VpnArgs args;
    LogDialog log_win;
    int pd[2];
private slots:
    void start();
    void stop();
    void start_log();
};

#endif // MAINWINDOW_H
