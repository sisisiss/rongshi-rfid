/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 6.5.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPlainTextEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpinBox>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralwidget;
    QPushButton *pb_beep;
    QPushButton *pb_getdevnum;
    QLineEdit *lineEdit_uid;
    QLabel *label_2;
    QSpinBox *spinBox_star;
    QLabel *label_3;
    QLabel *label_4;
    QLabel *label_5;
    QSpinBox *spinBox_num;
    QPlainTextEdit *plainTextEdit_data;
    QLabel *label_6;
    QCheckBox *checkbox_sele;
    QLineEdit *lineEdit_authkey;
    QComboBox *comboBox_init;
    QCheckBox *checkBox_readen;
    QLineEdit *lineEdit_newkey;
    QLabel *label_7;
    QPushButton *pb_init;
    QPushButton *pb_easy_read;
    QSpinBox *spinBox_star_rw;
    QSpinBox *spinBox_num_rw;
    QLabel *label_8;
    QPushButton *pb_easy_write;
    QPushButton *pb_request;
    QPushButton *pb_read4page;
    QPushButton *pb_write1page;
    QPushButton *pb_auth;
    QPushButton *pb_getver;
    QPushButton *pb_getsign;
    QPushButton *pb_getcounter;
    QPushButton *pb_staticlock;
    QPushButton *pb_dynamiclock;
    QLabel *label_9;
    QLabel *label_10;
    QMenuBar *menubar;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName("MainWindow");
        MainWindow->resize(712, 652);
        centralwidget = new QWidget(MainWindow);
        centralwidget->setObjectName("centralwidget");
        pb_beep = new QPushButton(centralwidget);
        pb_beep->setObjectName("pb_beep");
        pb_beep->setGeometry(QRect(7, 8, 140, 31));
        pb_getdevnum = new QPushButton(centralwidget);
        pb_getdevnum->setObjectName("pb_getdevnum");
        pb_getdevnum->setGeometry(QRect(147, 8, 260, 31));
        lineEdit_uid = new QLineEdit(centralwidget);
        lineEdit_uid->setObjectName("lineEdit_uid");
        lineEdit_uid->setGeometry(QRect(160, 253, 161, 21));
        label_2 = new QLabel(centralwidget);
        label_2->setObjectName("label_2");
        label_2->setGeometry(QRect(288, 91, 111, 16));
        QFont font;
        font.setPointSize(10);
        label_2->setFont(font);
        spinBox_star = new QSpinBox(centralwidget);
        spinBox_star->setObjectName("spinBox_star");
        spinBox_star->setGeometry(QRect(227, 87, 51, 22));
        spinBox_star->setMaximum(255);
        spinBox_star->setValue(30);
        label_3 = new QLabel(centralwidget);
        label_3->setObjectName("label_3");
        label_3->setGeometry(QRect(206, 91, 16, 16));
        label_3->setFont(font);
        label_4 = new QLabel(centralwidget);
        label_4->setObjectName("label_4");
        label_4->setGeometry(QRect(56, 196, 101, 20));
        label_4->setFont(font);
        label_5 = new QLabel(centralwidget);
        label_5->setObjectName("label_5");
        label_5->setGeometry(QRect(8, 253, 150, 20));
        label_5->setFont(font);
        spinBox_num = new QSpinBox(centralwidget);
        spinBox_num->setObjectName("spinBox_num");
        spinBox_num->setGeometry(QRect(614, 115, 70, 22));
        spinBox_num->setMaximum(255);
        spinBox_num->setValue(0);
        plainTextEdit_data = new QPlainTextEdit(centralwidget);
        plainTextEdit_data->setObjectName("plainTextEdit_data");
        plainTextEdit_data->setGeometry(QRect(160, 282, 530, 100));
        label_6 = new QLabel(centralwidget);
        label_6->setObjectName("label_6");
        label_6->setGeometry(QRect(83, 283, 70, 20));
        label_6->setFont(font);
        checkbox_sele = new QCheckBox(centralwidget);
        checkbox_sele->setObjectName("checkbox_sele");
        checkbox_sele->setGeometry(QRect(19, 50, 320, 19));
        lineEdit_authkey = new QLineEdit(centralwidget);
        lineEdit_authkey->setObjectName("lineEdit_authkey");
        lineEdit_authkey->setGeometry(QRect(334, 48, 71, 21));
        comboBox_init = new QComboBox(centralwidget);
        comboBox_init->addItem(QString());
        comboBox_init->addItem(QString());
        comboBox_init->setObjectName("comboBox_init");
        comboBox_init->setGeometry(QRect(50, 89, 150, 22));
        checkBox_readen = new QCheckBox(centralwidget);
        checkBox_readen->setObjectName("checkBox_readen");
        checkBox_readen->setGeometry(QRect(404, 89, 211, 19));
        lineEdit_newkey = new QLineEdit(centralwidget);
        lineEdit_newkey->setObjectName("lineEdit_newkey");
        lineEdit_newkey->setGeometry(QRect(613, 87, 71, 21));
        label_7 = new QLabel(centralwidget);
        label_7->setObjectName("label_7");
        label_7->setGeometry(QRect(112, 119, 501, 20));
        label_7->setFont(font);
        pb_init = new QPushButton(centralwidget);
        pb_init->setObjectName("pb_init");
        pb_init->setGeometry(QRect(15, 143, 670, 30));
        pb_easy_read = new QPushButton(centralwidget);
        pb_easy_read->setObjectName("pb_easy_read");
        pb_easy_read->setGeometry(QRect(465, 212, 221, 31));
        spinBox_star_rw = new QSpinBox(centralwidget);
        spinBox_star_rw->setObjectName("spinBox_star_rw");
        spinBox_star_rw->setGeometry(QRect(160, 193, 51, 22));
        spinBox_star_rw->setMaximum(255);
        spinBox_star_rw->setValue(4);
        spinBox_num_rw = new QSpinBox(centralwidget);
        spinBox_num_rw->setObjectName("spinBox_num_rw");
        spinBox_num_rw->setGeometry(QRect(160, 223, 51, 22));
        spinBox_num_rw->setMaximum(255);
        spinBox_num_rw->setValue(11);
        label_8 = new QLabel(centralwidget);
        label_8->setObjectName("label_8");
        label_8->setGeometry(QRect(96, 226, 61, 16));
        label_8->setFont(font);
        pb_easy_write = new QPushButton(centralwidget);
        pb_easy_write->setObjectName("pb_easy_write");
        pb_easy_write->setGeometry(QRect(465, 246, 221, 31));
        pb_request = new QPushButton(centralwidget);
        pb_request->setObjectName("pb_request");
        pb_request->setGeometry(QRect(427, 387, 260, 31));
        pb_read4page = new QPushButton(centralwidget);
        pb_read4page->setObjectName("pb_read4page");
        pb_read4page->setGeometry(QRect(428, 418, 260, 31));
        pb_write1page = new QPushButton(centralwidget);
        pb_write1page->setObjectName("pb_write1page");
        pb_write1page->setGeometry(QRect(427, 449, 260, 31));
        pb_auth = new QPushButton(centralwidget);
        pb_auth->setObjectName("pb_auth");
        pb_auth->setGeometry(QRect(428, 480, 260, 31));
        pb_getver = new QPushButton(centralwidget);
        pb_getver->setObjectName("pb_getver");
        pb_getver->setGeometry(QRect(427, 511, 260, 31));
        pb_getsign = new QPushButton(centralwidget);
        pb_getsign->setObjectName("pb_getsign");
        pb_getsign->setGeometry(QRect(427, 542, 260, 31));
        pb_getcounter = new QPushButton(centralwidget);
        pb_getcounter->setObjectName("pb_getcounter");
        pb_getcounter->setGeometry(QRect(427, 573, 261, 31));
        pb_staticlock = new QPushButton(centralwidget);
        pb_staticlock->setObjectName("pb_staticlock");
        pb_staticlock->setGeometry(QRect(10, 542, 321, 31));
        pb_dynamiclock = new QPushButton(centralwidget);
        pb_dynamiclock->setObjectName("pb_dynamiclock");
        pb_dynamiclock->setGeometry(QRect(10, 576, 321, 31));
        label_9 = new QLabel(centralwidget);
        label_9->setObjectName("label_9");
        label_9->setGeometry(QRect(471, 183, 101, 20));
        label_9->setFont(font);
        label_10 = new QLabel(centralwidget);
        label_10->setObjectName("label_10");
        label_10->setGeometry(QRect(14, 517, 151, 20));
        label_10->setFont(font);
        MainWindow->setCentralWidget(centralwidget);
        menubar = new QMenuBar(MainWindow);
        menubar->setObjectName("menubar");
        menubar->setGeometry(QRect(0, 0, 712, 21));
        MainWindow->setMenuBar(menubar);
        statusbar = new QStatusBar(MainWindow);
        statusbar->setObjectName("statusbar");
        MainWindow->setStatusBar(statusbar);

        retranslateUi(MainWindow);

        comboBox_init->setCurrentIndex(1);


        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QCoreApplication::translate("MainWindow", "Ntag2_Qt_Demo", nullptr));
        pb_beep->setText(QCoreApplication::translate("MainWindow", "\351\251\261\345\212\250\350\257\273\345\206\231\345\231\250\345\217\221\345\207\272\345\223\215\345\243\260", nullptr));
        pb_getdevnum->setText(QCoreApplication::translate("MainWindow", "\350\257\273\345\207\272\350\256\276\345\244\207\345\205\250\347\220\203\345\224\257\344\270\200\347\232\204\350\256\276\345\244\207\347\274\226\345\217\267\357\274\214\344\275\234\344\270\272\345\212\240\345\257\206\347\213\227\347\224\250", nullptr));
        label_2->setText(QCoreApplication::translate("MainWindow", "\351\241\265\345\274\200\345\247\213\346\234\211\345\257\206\347\240\201\344\277\235\346\212\244\357\274\214", nullptr));
        label_3->setText(QCoreApplication::translate("MainWindow", "\344\273\216", nullptr));
        label_4->setText(QCoreApplication::translate("MainWindow", "\350\257\273\345\206\231\350\265\267\345\247\213\351\241\265\345\234\260\345\235\200\357\274\232", nullptr));
        label_5->setText(QCoreApplication::translate("MainWindow", "\345\215\241\347\211\207\345\205\250\347\220\203\345\224\257\344\270\200\346\240\207\350\257\206\347\254\246UID\357\274\232", nullptr));
        label_6->setText(QCoreApplication::translate("MainWindow", "\350\257\273\345\206\231\345\215\241\346\225\260\346\215\256\357\274\232", nullptr));
        checkbox_sele->setText(QCoreApplication::translate("MainWindow", "\351\200\211\346\213\251\345\205\210\350\256\244\350\257\201\345\215\241\345\257\206\347\240\201\345\206\215\347\273\247\347\273\255\344\273\245\344\270\213\347\232\204\350\257\273\345\206\231\345\215\241\346\223\215\344\275\234\357\274\214\350\256\244\350\257\201\345\257\206\347\240\201\357\274\232", nullptr));
        lineEdit_authkey->setText(QCoreApplication::translate("MainWindow", "12345678", nullptr));
        comboBox_init->setItemText(0, QCoreApplication::translate("MainWindow", "\345\274\200\345\220\257\345\215\241\347\211\207\345\257\206\347\240\201\344\277\235\346\212\244\345\212\237\350\203\275", nullptr));
        comboBox_init->setItemText(1, QCoreApplication::translate("MainWindow", "\345\217\226\346\266\210\345\215\241\347\211\207\345\257\206\347\240\201\344\277\235\346\212\244\345\212\237\350\203\275", nullptr));

        checkBox_readen->setText(QCoreApplication::translate("MainWindow", "\351\200\211\346\213\251\345\274\200\345\220\257\350\257\273\346\223\215\344\275\234\345\257\206\347\240\201\344\277\235\346\212\244\357\274\214\346\226\260\345\257\206\347\240\201\357\274\232", nullptr));
        lineEdit_newkey->setText(QCoreApplication::translate("MainWindow", "12345678", nullptr));
        label_7->setText(QCoreApplication::translate("MainWindow", "\345\205\201\350\256\270\345\257\206\347\240\201\350\256\244\350\257\201\351\224\231\350\257\257\346\254\241\346\225\260\357\274\214\345\275\223\345\257\206\347\240\201\350\256\244\350\257\201\345\244\261\350\264\245\346\254\241\346\225\260\345\244\247\344\272\216\350\256\276\347\275\256\345\200\274\345\215\241\347\211\207\345\260\206\346\212\245\345\272\237\357\274\2140\344\270\272\344\270\215\351\231\220\345\210\266\346\254\241\346\225\260\357\274\232", nullptr));
        pb_init->setText(QCoreApplication::translate("MainWindow", "\346\214\211\344\273\245\344\270\212\345\217\202\346\225\260 \350\256\276\347\275\256\345\215\241\347\211\207\350\256\244\350\257\201\345\257\206\347\240\201\345\217\212\350\257\273\345\206\231\344\277\235\346\212\244\346\234\272\345\210\266\357\274\214\346\226\260\345\215\241\345\207\272\345\216\202\346\227\266\344\270\200\350\210\254\346\262\241\346\234\211\345\274\200\345\220\257\346\255\244\346\234\272\345\210\266\345\217\257\344\273\245\347\233\264\346\216\245\350\257\273\345\206\231\343\200\202", nullptr));
        pb_easy_read->setText(QCoreApplication::translate("MainWindow", "\350\275\273\346\235\276\350\257\273\345\215\241\357\274\214\346\257\217\346\254\241\346\234\200\345\244\232\345\217\257\350\257\273\345\217\22612\351\241\265\346\225\260\346\215\256", nullptr));
        label_8->setText(QCoreApplication::translate("MainWindow", "\350\257\273\345\206\231\351\241\265\346\225\260\357\274\232", nullptr));
        pb_easy_write->setText(QCoreApplication::translate("MainWindow", "\350\275\273\346\235\276\345\206\231\345\215\241\357\274\214\346\257\217\346\254\241\346\234\200\345\244\232\345\217\257\345\206\231\345\205\24511\351\241\265\346\225\260\346\215\256", nullptr));
        pb_request->setText(QCoreApplication::translate("MainWindow", "\350\257\273\345\217\226\345\215\241\347\211\207\345\224\257\344\270\200\346\240\207\350\257\206\347\254\246UID", nullptr));
        pb_read4page->setText(QCoreApplication::translate("MainWindow", "\344\273\216\350\265\267\345\247\213\351\241\265\345\274\200\345\247\213\350\257\273\345\217\226\350\277\236\347\273\255\347\232\2044\344\270\252\351\241\265\346\225\260\346\215\256", nullptr));
        pb_write1page->setText(QCoreApplication::translate("MainWindow", "\345\206\2311\351\241\265\346\225\260\346\215\256", nullptr));
        pb_auth->setText(QCoreApplication::translate("MainWindow", "\350\256\244\350\257\201\345\215\241\347\211\207\345\257\206\347\240\201", nullptr));
        pb_getver->setText(QCoreApplication::translate("MainWindow", "\350\257\273\345\217\226\345\215\241\347\211\207\347\232\204\347\211\210\346\234\254\345\217\267\345\217\212\345\236\213\345\217\267", nullptr));
        pb_getsign->setText(QCoreApplication::translate("MainWindow", "\350\257\273\345\217\226\345\215\241\347\211\207\347\232\204\347\255\276\345\220\215\344\277\241\346\201\257\357\274\214\345\217\257\351\252\214\350\257\201\345\215\241\346\230\257\345\220\246NXP\345\216\237\345\216\202", nullptr));
        pb_getcounter->setText(QCoreApplication::translate("MainWindow", "\350\257\273\345\217\226\345\215\241\347\211\207\345\215\225\345\220\221\350\256\241\346\225\260\345\231\250\345\200\274", nullptr));
        pb_staticlock->setText(QCoreApplication::translate("MainWindow", "\351\235\231\346\200\201\351\224\201\357\274\214\351\224\201\345\256\2323-15\351\241\265\357\274\214\351\224\201\346\255\273\345\220\216\346\225\260\346\215\256\346\227\240\346\263\225\345\206\215\346\254\241\344\277\256\346\224\271", nullptr));
        pb_dynamiclock->setText(QCoreApplication::translate("MainWindow", "\345\212\250\346\200\201\351\224\201\357\274\214\351\224\201\345\256\23216\351\241\265\344\273\245\345\220\216\347\232\204\351\241\265\357\274\214\351\224\201\346\255\273\345\220\216\346\225\260\346\215\256\346\227\240\346\263\225\345\206\215\346\254\241\344\277\256\346\224\271", nullptr));
        label_9->setText(QCoreApplication::translate("MainWindow", "\345\270\270\347\224\250\346\214\207\344\273\244", nullptr));
        label_10->setText(QCoreApplication::translate("MainWindow", "\345\215\261\351\231\251\346\214\207\344\273\244\357\274\214\350\257\267\350\260\250\346\205\216\344\275\277\347\224\250\357\274\201", nullptr));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
