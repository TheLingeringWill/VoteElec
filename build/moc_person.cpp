/****************************************************************************
** Meta object code from reading C++ file 'person.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.15.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../app/res/person.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'person.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.15.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_Person_t {
    QByteArrayData data[14];
    char stringdata0[138];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_Person_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_Person_t qt_meta_stringdata_Person = {
    {
QT_MOC_LITERAL(0, 0, 6), // "Person"
QT_MOC_LITERAL(1, 7, 17), // "numCitoyenChanged"
QT_MOC_LITERAL(2, 25, 16), // "firstNameChanged"
QT_MOC_LITERAL(3, 42, 15), // "lastNameChanged"
QT_MOC_LITERAL(4, 58, 13), // "genderChanged"
QT_MOC_LITERAL(5, 72, 10), // "numCitoyen"
QT_MOC_LITERAL(6, 83, 9), // "firstName"
QT_MOC_LITERAL(7, 93, 8), // "lastName"
QT_MOC_LITERAL(8, 102, 6), // "gender"
QT_MOC_LITERAL(9, 109, 6), // "GENDER"
QT_MOC_LITERAL(10, 116, 6), // "Gender"
QT_MOC_LITERAL(11, 123, 3), // "MAN"
QT_MOC_LITERAL(12, 127, 5), // "WOMAN"
QT_MOC_LITERAL(13, 133, 4) // "BOTH"

    },
    "Person\0numCitoyenChanged\0firstNameChanged\0"
    "lastNameChanged\0genderChanged\0numCitoyen\0"
    "firstName\0lastName\0gender\0GENDER\0"
    "Gender\0MAN\0WOMAN\0BOTH"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_Person[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       0,    0, // methods
       4,   14, // properties
       1,   30, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // properties: name, type, flags
       5, QMetaType::QString, 0x00495103,
       6, QMetaType::QString, 0x00495103,
       7, QMetaType::QString, 0x00495103,
       8, 0x80000000 | 9, 0x0049510b,

 // properties: notify_signal_id
    1879048193,
    1879048194,
    1879048195,
    1879048196,

 // enums: name, alias, flags, count, data
      10,   10, 0x0,    3,   35,

 // enum data: key, value
      11, uint(Person::MAN),
      12, uint(Person::WOMAN),
      13, uint(Person::BOTH),

       0        // eod
};

void Person::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{

#ifndef QT_NO_PROPERTIES
    if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<Person *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QString*>(_v) = _t->numCitoyen(); break;
        case 1: *reinterpret_cast< QString*>(_v) = _t->firstName(); break;
        case 2: *reinterpret_cast< QString*>(_v) = _t->lastName(); break;
        case 3: *reinterpret_cast< GENDER*>(_v) = _t->gender(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<Person *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setNumCitoyen(*reinterpret_cast< QString*>(_v)); break;
        case 1: _t->setFirstName(*reinterpret_cast< QString*>(_v)); break;
        case 2: _t->setLastName(*reinterpret_cast< QString*>(_v)); break;
        case 3: _t->setGender(*reinterpret_cast< GENDER*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
    Q_UNUSED(_o);
    Q_UNUSED(_id);
    Q_UNUSED(_c);
    Q_UNUSED(_a);
}

QT_INIT_METAOBJECT const QMetaObject Person::staticMetaObject = { {
    QMetaObject::SuperData::link<User::staticMetaObject>(),
    qt_meta_stringdata_Person.data,
    qt_meta_data_Person,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *Person::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Person::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_Person.stringdata0))
        return static_cast<void*>(this);
    return User::qt_metacast(_clname);
}

int Person::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = User::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    
#ifndef QT_NO_PROPERTIES
    if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 4;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 4;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 4;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 4;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 4;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}
// If you get a compile error in this function it can be because either
//     a) You are using a NOTIFY signal that does not exist. Fix it.
//     b) You are using a NOTIFY signal that does exist (in a parent class) but has a non-empty parameter list. This is a moc limitation.
Q_DECL_UNUSED static void checkNotifySignalValidity_Person(Person *t) {
    t->numCitoyenChanged();
    t->firstNameChanged();
    t->lastNameChanged();
    t->genderChanged();
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
