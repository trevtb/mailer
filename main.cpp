#include <mailjob.h>

int main(int argc, char *argv[]) {
    QCoreApplication a(argc, argv);
    
    MailJob mj;
    mj.start();

    return a.exec();
} //endmethod main
