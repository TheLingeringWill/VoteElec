/****************************************************************************
** Meta object code from reading C++ file 'vesqlquerymodel.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.15.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../app/res/vesqlquerymodel.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'vesqlquerymodel.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.15.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_VESqlQueryModel_t {
    QByteArrayData data[24];
    char stringdata0[225];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_VESqlQueryModel_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_VESqlQueryModel_t qt_meta_stringdata_VESqlQueryModel = {
    {
QT_MOC_LITERAL(0, 0, 15), // "VESqlQueryModel"
QT_MOC_LITERAL(1, 16, 11), // "getElection"
QT_MOC_LITERAL(2, 28, 0), // ""
QT_MOC_LITERAL(3, 29, 12), // "getCandidate"
QT_MOC_LITERAL(4, 42, 12), // "electionName"
QT_MOC_LITERAL(5, 55, 8), // "isLogged"
QT_MOC_LITERAL(6, 64, 10), // "numElector"
QT_MOC_LITERAL(7, 75, 8), // "password"
QT_MOC_LITERAL(8, 84, 10), // "isRegister"
QT_MOC_LITERAL(9, 95, 10), // "numCitizen"
QT_MOC_LITERAL(10, 106, 9), // "firstName"
QT_MOC_LITERAL(11, 116, 8), // "lastName"
QT_MOC_LITERAL(12, 125, 6), // "gender"
QT_MOC_LITERAL(13, 132, 5), // "birth"
QT_MOC_LITERAL(14, 138, 8), // "hasVoted"
QT_MOC_LITERAL(15, 147, 12), // "nameElection"
QT_MOC_LITERAL(16, 160, 4), // "vote"
QT_MOC_LITERAL(17, 165, 11), // "idCandidate"
QT_MOC_LITERAL(18, 177, 11), // "elctionName"
QT_MOC_LITERAL(19, 189, 7), // "getUser"
QT_MOC_LITERAL(20, 197, 3), // "tel"
QT_MOC_LITERAL(21, 201, 4), // "mail"
QT_MOC_LITERAL(22, 206, 3), // "mdp"
QT_MOC_LITERAL(23, 210, 14) // "getParticipate"

    },
    "VESqlQueryModel\0getElection\0\0getCandidate\0"
    "electionName\0isLogged\0numElector\0"
    "password\0isRegister\0numCitizen\0firstName\0"
    "lastName\0gender\0birth\0hasVoted\0"
    "nameElection\0vote\0idCandidate\0elctionName\0"
    "getUser\0tel\0mail\0mdp\0getParticipate"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_VESqlQueryModel[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       8,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // methods: name, argc, parameters, tag, flags
       1,    0,   54,    2, 0x02 /* Public */,
       3,    1,   55,    2, 0x02 /* Public */,
       5,    2,   58,    2, 0x02 /* Public */,
       8,    6,   63,    2, 0x02 /* Public */,
      14,    2,   76,    2, 0x02 /* Public */,
      16,    3,   81,    2, 0x02 /* Public */,
      19,    4,   88,    2, 0x02 /* Public */,
      23,    1,   97,    2, 0x02 /* Public */,

 // methods: parameters
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,    4,
    QMetaType::Bool, QMetaType::QString, QMetaType::QString,    6,    7,
    QMetaType::Bool, QMetaType::QString, QMetaType::QString, QMetaType::QString, QMetaType::QString, QMetaType::QString, QMetaType::QString,    6,    9,   10,   11,   12,   13,
    QMetaType::Bool, QMetaType::QString, QMetaType::QString,   15,    6,
    QMetaType::Void, QMetaType::QString, QMetaType::Int, QMetaType::QString,    6,   17,   18,
    QMetaType::Void, QMetaType::QString, QMetaType::QString, QMetaType::QString, QMetaType::QString,    6,   20,   21,   22,
    QMetaType::Void, QMetaType::QString,    6,

       0        // eod
};

void VESqlQueryModel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<VESqlQueryModel *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->getElection(); break;
        case 1: _t->getCandidate((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 2: { bool _r = _t->isLogged((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2])));
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = std::move(_r); }  break;
        case 3: { bool _r = _t->isRegister((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2])),(*reinterpret_cast< const QString(*)>(_a[3])),(*reinterpret_cast< const QString(*)>(_a[4])),(*reinterpret_cast< const QString(*)>(_a[5])),(*reinterpret_cast< const QString(*)>(_a[6])));
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = std::move(_r); }  break;
        case 4: { bool _r = _t->hasVoted((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2])));
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = std::move(_r); }  break;
        case 5: _t->vote((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])),(*reinterpret_cast< const QString(*)>(_a[3]))); break;
        case 6: _t->getUser((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2])),(*reinterpret_cast< const QString(*)>(_a[3])),(*reinterpret_cast< const QString(*)>(_a[4]))); break;
        case 7: _t->getParticipate((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        default: ;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject VESqlQueryModel::staticMetaObject = { {
    QMetaObject::SuperData::link<QSqlQueryModel::staticMetaObject>(),
    qt_meta_stringdata_VESqlQueryModel.data,
    qt_meta_data_VESqlQueryModel,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *VESqlQueryModel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *VESqlQueryModel::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_VESqlQueryModel.stringdata0))
        return static_cast<void*>(this);
    return QSqlQueryModel::qt_metacast(_clname);
}

int VESqlQueryModel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QSqlQueryModel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 8)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 8;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 8)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 8;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
