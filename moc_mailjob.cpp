/****************************************************************************
** Meta object code from reading C++ file 'mailjob.h'
**
** Created: Fri Nov 29 17:48:53 2013
**      by: The Qt Meta Object Compiler version 62 (Qt 4.6.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "mailjob.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'mailjob.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 62
#error "This file was generated using the moc from 4.6.3. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_MailJob[] = {

 // content:
       4,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      21,    8,    9,    8, 0x0a,
      43,   39,    8,    8, 0x0a,
      65,    8,    8,    8, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_MailJob[] = {
    "MailJob\0\0std::string\0currentDateTime()\0"
    "msg\0printMsg(const char*)\0start()\0"
};

const QMetaObject MailJob::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_MailJob,
      qt_meta_data_MailJob, 0 }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &MailJob::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *MailJob::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *MailJob::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_MailJob))
        return static_cast<void*>(const_cast< MailJob*>(this));
    return QObject::qt_metacast(_clname);
}

int MailJob::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: { std::string _r = currentDateTime();
            if (_a[0]) *reinterpret_cast< std::string*>(_a[0]) = _r; }  break;
        case 1: printMsg((*reinterpret_cast< const char*(*)>(_a[1]))); break;
        case 2: start(); break;
        default: ;
        }
        _id -= 3;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
