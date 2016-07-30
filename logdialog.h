#ifndef LOGDIALOG_H
#define LOGDIALOG_H

#include <QDialog>

namespace Ui {
class LogDialog;
}

class LogDialog : public QDialog
{
    Q_OBJECT

public:
    explicit LogDialog(QWidget *parent = 0);
    ~LogDialog();
    int init_log_file(int fd);
private:
    Ui::LogDialog *ui;
};

#endif // LOGDIALOG_H
