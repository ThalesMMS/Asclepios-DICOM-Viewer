/****************************************************************************
** Meta object code from reading C++ file 'QVTKOpenGLNativeWidget.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.15.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../../../vtk/GUISupport/Qt/QVTKOpenGLNativeWidget.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'QVTKOpenGLNativeWidget.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.15.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_QVTKOpenGLNativeWidget_t {
    QByteArrayData data[14];
    char stringdata0[172];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_QVTKOpenGLNativeWidget_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_QVTKOpenGLNativeWidget_t qt_meta_stringdata_QVTKOpenGLNativeWidget = {
    {
QT_MOC_LITERAL(0, 0, 22), // "QVTKOpenGLNativeWidget"
QT_MOC_LITERAL(1, 23, 10), // "mouseEvent"
QT_MOC_LITERAL(2, 34, 0), // ""
QT_MOC_LITERAL(3, 35, 12), // "QMouseEvent*"
QT_MOC_LITERAL(4, 48, 5), // "event"
QT_MOC_LITERAL(5, 54, 14), // "cleanupContext"
QT_MOC_LITERAL(6, 69, 11), // "recreateFBO"
QT_MOC_LITERAL(7, 81, 18), // "startEventCallback"
QT_MOC_LITERAL(8, 100, 21), // "cursorChangedCallback"
QT_MOC_LITERAL(9, 122, 10), // "vtkObject*"
QT_MOC_LITERAL(10, 133, 6), // "caller"
QT_MOC_LITERAL(11, 140, 9), // "vtk_event"
QT_MOC_LITERAL(12, 150, 11), // "client_data"
QT_MOC_LITERAL(13, 162, 9) // "call_data"

    },
    "QVTKOpenGLNativeWidget\0mouseEvent\0\0"
    "QMouseEvent*\0event\0cleanupContext\0"
    "recreateFBO\0startEventCallback\0"
    "cursorChangedCallback\0vtkObject*\0"
    "caller\0vtk_event\0client_data\0call_data"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_QVTKOpenGLNativeWidget[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   39,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       5,    0,   42,    2, 0x09 /* Protected */,
       6,    0,   43,    2, 0x08 /* Private */,
       7,    0,   44,    2, 0x08 /* Private */,
       8,    4,   45,    2, 0x08 /* Private */,

 // signals: parameters
    QMetaType::Void, 0x80000000 | 3,    4,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 9, QMetaType::ULong, QMetaType::VoidStar, QMetaType::VoidStar,   10,   11,   12,   13,

       0        // eod
};

void QVTKOpenGLNativeWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<QVTKOpenGLNativeWidget *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->mouseEvent((*reinterpret_cast< QMouseEvent*(*)>(_a[1]))); break;
        case 1: _t->cleanupContext(); break;
        case 2: _t->recreateFBO(); break;
        case 3: _t->startEventCallback(); break;
        case 4: _t->cursorChangedCallback((*reinterpret_cast< vtkObject*(*)>(_a[1])),(*reinterpret_cast< ulong(*)>(_a[2])),(*reinterpret_cast< void*(*)>(_a[3])),(*reinterpret_cast< void*(*)>(_a[4]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (QVTKOpenGLNativeWidget::*)(QMouseEvent * );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&QVTKOpenGLNativeWidget::mouseEvent)) {
                *result = 0;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject QVTKOpenGLNativeWidget::staticMetaObject = { {
    QMetaObject::SuperData::link<QOpenGLWidget::staticMetaObject>(),
    qt_meta_stringdata_QVTKOpenGLNativeWidget.data,
    qt_meta_data_QVTKOpenGLNativeWidget,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *QVTKOpenGLNativeWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *QVTKOpenGLNativeWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_QVTKOpenGLNativeWidget.stringdata0))
        return static_cast<void*>(this);
    return QOpenGLWidget::qt_metacast(_clname);
}

int QVTKOpenGLNativeWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QOpenGLWidget::qt_metacall(_c, _id, _a);
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

// SIGNAL 0
void QVTKOpenGLNativeWidget::mouseEvent(QMouseEvent * _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
