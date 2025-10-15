/****************************************************************************
** Meta object code from reading C++ file 'vtkQtDebugLeaksModel.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.15.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../../../vtk/GUISupport/Qt/vtkQtDebugLeaksModel.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'vtkQtDebugLeaksModel.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.15.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_vtkQtDebugLeaksModel_t {
    QByteArrayData data[13];
    char stringdata0[156];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_vtkQtDebugLeaksModel_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_vtkQtDebugLeaksModel_t qt_meta_stringdata_vtkQtDebugLeaksModel = {
    {
QT_MOC_LITERAL(0, 0, 20), // "vtkQtDebugLeaksModel"
QT_MOC_LITERAL(1, 21, 9), // "addObject"
QT_MOC_LITERAL(2, 31, 0), // ""
QT_MOC_LITERAL(3, 32, 14), // "vtkObjectBase*"
QT_MOC_LITERAL(4, 47, 6), // "object"
QT_MOC_LITERAL(5, 54, 12), // "removeObject"
QT_MOC_LITERAL(6, 67, 14), // "registerObject"
QT_MOC_LITERAL(7, 82, 21), // "processPendingObjects"
QT_MOC_LITERAL(8, 104, 13), // "onAboutToQuit"
QT_MOC_LITERAL(9, 118, 5), // "flags"
QT_MOC_LITERAL(10, 124, 13), // "Qt::ItemFlags"
QT_MOC_LITERAL(11, 138, 11), // "QModelIndex"
QT_MOC_LITERAL(12, 150, 5) // "index"

    },
    "vtkQtDebugLeaksModel\0addObject\0\0"
    "vtkObjectBase*\0object\0removeObject\0"
    "registerObject\0processPendingObjects\0"
    "onAboutToQuit\0flags\0Qt::ItemFlags\0"
    "QModelIndex\0index"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_vtkQtDebugLeaksModel[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   44,    2, 0x09 /* Protected */,
       5,    1,   47,    2, 0x09 /* Protected */,
       6,    1,   50,    2, 0x09 /* Protected */,
       7,    0,   53,    2, 0x09 /* Protected */,
       8,    0,   54,    2, 0x09 /* Protected */,
       9,    1,   55,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void,
    QMetaType::Void,
    0x80000000 | 10, 0x80000000 | 11,   12,

       0        // eod
};

void vtkQtDebugLeaksModel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<vtkQtDebugLeaksModel *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->addObject((*reinterpret_cast< vtkObjectBase*(*)>(_a[1]))); break;
        case 1: _t->removeObject((*reinterpret_cast< vtkObjectBase*(*)>(_a[1]))); break;
        case 2: _t->registerObject((*reinterpret_cast< vtkObjectBase*(*)>(_a[1]))); break;
        case 3: _t->processPendingObjects(); break;
        case 4: _t->onAboutToQuit(); break;
        case 5: { Qt::ItemFlags _r = _t->flags((*reinterpret_cast< const QModelIndex(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< Qt::ItemFlags*>(_a[0]) = std::move(_r); }  break;
        default: ;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject vtkQtDebugLeaksModel::staticMetaObject = { {
    QMetaObject::SuperData::link<QStandardItemModel::staticMetaObject>(),
    qt_meta_stringdata_vtkQtDebugLeaksModel.data,
    qt_meta_data_vtkQtDebugLeaksModel,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *vtkQtDebugLeaksModel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *vtkQtDebugLeaksModel::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_vtkQtDebugLeaksModel.stringdata0))
        return static_cast<void*>(this);
    return QStandardItemModel::qt_metacast(_clname);
}

int vtkQtDebugLeaksModel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QStandardItemModel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 6)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 6;
    }
    return _id;
}
struct qt_meta_stringdata_ReferenceCountModel_t {
    QByteArrayData data[3];
    char stringdata0[43];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_ReferenceCountModel_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_ReferenceCountModel_t qt_meta_stringdata_ReferenceCountModel = {
    {
QT_MOC_LITERAL(0, 0, 19), // "ReferenceCountModel"
QT_MOC_LITERAL(1, 20, 21), // "updateReferenceCounts"
QT_MOC_LITERAL(2, 42, 0) // ""

    },
    "ReferenceCountModel\0updateReferenceCounts\0"
    ""
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_ReferenceCountModel[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       1,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   19,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void,

       0        // eod
};

void ReferenceCountModel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<ReferenceCountModel *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->updateReferenceCounts(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

QT_INIT_METAOBJECT const QMetaObject ReferenceCountModel::staticMetaObject = { {
    QMetaObject::SuperData::link<QStandardItemModel::staticMetaObject>(),
    qt_meta_stringdata_ReferenceCountModel.data,
    qt_meta_data_ReferenceCountModel,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *ReferenceCountModel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *ReferenceCountModel::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_ReferenceCountModel.stringdata0))
        return static_cast<void*>(this);
    return QStandardItemModel::qt_metacast(_clname);
}

int ReferenceCountModel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QStandardItemModel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 1)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 1;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 1)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 1;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
