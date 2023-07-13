#include "mailjob.h"

MailJob::MailJob(QObject *parent) : QObject(parent) {
    this->config[0] = "localhost";                              // db-server hostname
    this->config[1] = "mailersql1";                             // database name
    this->config[2] = "root";                                   // mysql user
    this->config[3] = "";                                       // mysql password

    /**this->config[0] = "localhost";                           // db-server hostname
    this->config[1] = "test";                                   // database name
    this->config[2] = "root";                                   // mysql user
    this->config[3] = "hihaysod23";                             // mysql password**/

    this->db = QSqlDatabase::addDatabase("QMYSQL");
} //endconstructor

QTextStream MailJob::qout(stdout, QIODevice::WriteOnly);

const std::string MailJob::currentDateTime() {
    time_t now = time(0);
    struct tm tstruct;
    char buf[80];
    tstruct = *localtime(&now);
    strftime(buf, sizeof(buf), "%X: ", &tstruct);

    return buf;
} //endfunction currentDateTime

void MailJob::printMsg(const char* msg) {
    qout << currentDateTime().c_str() << msg << endl;
} //endfunction printMsg

void MailJob::quitApp() {
    removeLock();
    exit(0);
} //endfunction quitApp

void MailJob::createLock() {
    QString outputFilename = "./lock.lck";
    QFile outputFile(outputFilename);
    outputFile.open(QIODevice::WriteOnly);

    if (!outputFile.isOpen()) {
        printMsg("Unable to write lockfile. Exiting.");
        exit(0);
    } //endif

    QTextStream outStream(&outputFile);
    QString id = QString::number(QCoreApplication::applicationPid());
    outStream << id.toStdString().c_str() << endl;

    outputFile.close();
} //endfunction createLock

void MailJob::removeLock() {
    QFile file("./lock.lck");
    if (file.exists()) {
        QFile::remove("./lock.lck");
    } //endif
} //endfunction removeLock

bool MailJob::isLocked() {
    QFile file("./lock.lck");
    if (file.exists()) {
        return true;
    } else {
        return false;
    } //endif
} //endfunction isLocked

bool MailJob::connect() {
    printMsg("Connecting to database...");

    db.setHostName(config[0]);
    db.setDatabaseName(config[1]);
    db.setUserName(config[2]);
    db.setPassword(config[3]);

    bool ok = db.open();

    if (!ok) {
        printMsg("ERROR: Couldn't connect to database, exiting.");
        quitApp();
    } //endif

    return ok;
} //endfunction connect

QList<QString> MailJob::getConfig() {
    QList<QString> config;

    QSqlQuery query(QString("SELECT * FROM config"));

    if ( !query.isActive() ) {
        printMsg("ERROR: Could not execute the query.");
    } else {
        while (query.next()) {
            config.append(query.value(1).toString());
            config.append(query.value(2).toString());
            config.append(query.value(3).toString());
            config.append(query.value(4).toString());
            config.append(query.value(5).toString());
            config.append(query.value(6).toString());
            config.append(query.value(7).toString());
            config.append(query.value(8).toString());
        } //endwhile
    } //endif

    return config;
} //endmethod getConfig

QList<QList<QString> > MailJob::getTable() {
    QList<QList<QString> > tab;

    QSqlQuery query(QString("SELECT * FROM addresses"));

    if ( !query.isActive() ) {
        printMsg("ERROR: Could not execute the query.");
    } else {
        while (query.next()) {
            QList<QString> row;
            row.append(query.value(0).toString());
            row.append(query.value(1).toString());

            tab.append(row);
        } //endwhile
    } //endif

    return tab;
} //endmethod getTable

void MailJob::start() {
    if (connect()) {
        printMsg("Successfully connected to database.");
    } //endif

    printMsg("Retrieving configuration data and addresses...");
    QList<QString> config = getConfig();
    QList<QList<QString> > table = getTable();

    printMsg("Preparing SMTP connection...");
    SmtpClient client(config[0], config[1].toInt(), SmtpClient::TcpConnection);
    client.setUser(config[2]);
    client.setPassword(config[3]);

    client.connectToHost();
    client.login();
    printMsg("Connection established.");

    printMsg("PREPARING WEAPON OF MASS SPAM...");
    printMsg("LOADING LOW ORBIT MAIL CANNON...");
    printMsg("STARTING MAIL ATTACK! Please stand by and call your lawyer.");
    QList<QString> row;
    int count = 0;
    foreach (row, table) {
        if ((count % 100) == 0 && count > 0) {
            printMsg("Reconnecting due to message limit...");
            client.disconnect();
            QTest::qSleep(1000);

            client.setUser(config[2]);
            client.setPassword(config[3]);
            client.connectToHost();
            client.login();
        } //endif

        QString cont(config[7]);
        cont.replace(QString("{PENISAMPUTATION}"), QString(row[1]));
        MimeHtml content;
        content.setHtml(cont);
        QString msg = "Sending mail to " + row[1];
        printMsg(msg.toStdString().c_str());
        MimeMessage message;
        message.setSender(new EmailAddress(config[4], config[5]));
        message.addRecipient(new EmailAddress(row[1]));
        message.setSubject(config[6]);
        message.addPart(&content);
        client.sendMail(message);
        db.exec(QString("DELETE FROM addresses WHERE id=" + row[0]));

        count++;
    } //endforeach

    printMsg("All mails sent successfully! We are done, exiting.");
    client.quit();
    quitApp();
} //endmethod start
