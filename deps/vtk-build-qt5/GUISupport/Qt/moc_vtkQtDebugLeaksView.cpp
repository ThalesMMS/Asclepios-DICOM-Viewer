/****************************************************************************
** Meta object code from reading C++ file 'vtkQtDebugLeaksView.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.15.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../../../vtk/GUISupport/Qt/vtkQtDebugLeaksView.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'vtkQtDebugLeaksView.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.15.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_vtkQtDebugLeaksView_t {
    QByteArrayData data[10];
    char stringdata0[140];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_vtkQtDebugLeaksView_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_vtkQtDebugLeaksView_t qt_meta_stringdata_vtkQtDebugLeaksView = {
    {
QT_MOC_LITERAL(0, 0, 19), // "vtkQtDebugLeaksView"
QT_MOC_LITERAL(1, 20, 19), // "onCurrentRowChanged"
QT_MOC_LITERAL(2, 40, 0), // ""
QT_MOC_LITERAL(3, 41, 11), // "QModelIndex"
QT_MOC_LITERAL(4, 53, 7), // "current"
QT_MOC_LITERAL(5, 61, 18), // "onRowDoubleClicked"
QT_MOC_LITERAL(6, 80, 19), // "onFilterTextChanged"
QT_MOC_LITERAL(7, 100, 10), // "filterText"
QT_MOC_LITERAL(8, 111, 15), // "onFilterToggled"
QT_MOC_LITERAL(9, 127, 12) // "onFilterHelp"

    },
    "vtkQtDebugLeaksView\0onCurrentRowChanged\0"
    "\0QModelIndex\0current\0onRowDoubleClicked\0"
    "onFilterTextChanged\0filterText\0"
    "onFilterToggled\0onFilterHelp"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_vtkQtDebugLeaksView[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   39,    2, 0x09 /* Protected */,
       5,    1,   42,    2, 0x09 /* Protected */,
       6,    1,   45,    2, 0x09 /* Protected */,
       8,    0,   48,    2, 0x09 /* Protected */,
       9,    0,   49,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void, 0x80000000 | 3,    2,
    QMetaType::Void, QMetaType::QString,    7,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void vtkQtDebugLeaksView::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<vtkQtDebugLeaksView *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->onCurrentRowChanged((*reinterpret_cast< const QModelIndex(*)>(_a[1]))); break;
        case 1: _t->onRowDoubleClicked((*reinterpret_cast< const QModelIndex(*)>(_a[1]))); break;
        case 2: _t->onFilterTextChanged((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 3: _t->onFilterToggled(); break;
        case 4: _t->onFilterHelp(); break;
        default: ;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject vtkQtDebugLeaksView::staticMetaObject = { {
    QMetaObject::SuperData::link<QWidget::staticMetaObject>(),
    qt_meta_stringdata_vtkQtDebugLeaksView.data,
    qt_meta_data_vtkQtDebugLeaksView,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *vtkQtDebugLeaksView::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *vtkQtDebugLeaksView::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_vtkQtDebugLeaksView.stringdata0))
        return static_cast<void*>(this);
    return QWidget::qt_metacast(_clname);
}

int vtkQtDebugLeaksView::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 5)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 5;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
