#ifndef MAILJOB_H
#define MAILJOB_H

#include <QCoreApplication>
#include <QObject>
#include <QTextStream>
#include <iostream>
#include <QSqlDatabase>
#include <QFile>
#include <QSqlQuery>
#include <SmtpMime>
#include <unistd.h>
#include <QtTest/QTest>


class MailJob : public QObject {
    Q_OBJECT
public:
    explicit MailJob(QObject *parent = 0);
    const char* config[4];
    const char* smtpconf[4];
    static QTextStream qout;

private:
    QSqlDatabase db;

signals:
    
private:
    void createLock();
    void removeLock();
    bool isLocked();
    void quitApp();
    bool connect();
    QList<QList<QString> > getTable();
    QList<QString> getConfig();

public slots:
    const std::string currentDateTime();
    void printMsg(const char* msg);
    void start();
};

#endif // MAILJOB_H
