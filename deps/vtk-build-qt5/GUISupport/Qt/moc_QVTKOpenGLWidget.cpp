/****************************************************************************
** Meta object code from reading C++ file 'QVTKOpenGLWidget.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.15.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../../../vtk/GUISupport/Qt/QVTKOpenGLWidget.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'QVTKOpenGLWidget.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.15.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_QVTKOpenGLWidget_t {
    QByteArrayData data[10];
    char stringdata0[90];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_QVTKOpenGLWidget_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_QVTKOpenGLWidget_t qt_meta_stringdata_QVTKOpenGLWidget = {
    {
QT_MOC_LITERAL(0, 0, 16), // "QVTKOpenGLWidget"
QT_MOC_LITERAL(1, 17, 10), // "mouseEvent"
QT_MOC_LITERAL(2, 28, 0), // ""
QT_MOC_LITERAL(3, 29, 12), // "QMouseEvent*"
QT_MOC_LITERAL(4, 42, 5), // "event"
QT_MOC_LITERAL(5, 48, 7), // "resized"
QT_MOC_LITERAL(6, 56, 11), // "widgetEvent"
QT_MOC_LITERAL(7, 68, 7), // "QEvent*"
QT_MOC_LITERAL(8, 76, 1), // "e"
QT_MOC_LITERAL(9, 78, 11) // "windowEvent"

    },
    "QVTKOpenGLWidget\0mouseEvent\0\0QMouseEvent*\0"
    "event\0resized\0widgetEvent\0QEvent*\0e\0"
    "windowEvent"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_QVTKOpenGLWidget[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   34,    2, 0x06 /* Public */,
       5,    0,   37,    2, 0x06 /* Public */,
       6,    1,   38,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       9,    1,   41,    2, 0x08 /* Private */,

 // signals: parameters
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 7,    8,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 7,    4,

       0        // eod
};

void QVTKOpenGLWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<QVTKOpenGLWidget *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->mouseEvent((*reinterpret_cast< QMouseEvent*(*)>(_a[1]))); break;
        case 1: _t->resized(); break;
        case 2: _t->widgetEvent((*reinterpret_cast< QEvent*(*)>(_a[1]))); break;
        case 3: _t->windowEvent((*reinterpret_cast< QEvent*(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (QVTKOpenGLWidget::*)(QMouseEvent * );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&QVTKOpenGLWidget::mouseEvent)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (QVTKOpenGLWidget::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&QVTKOpenGLWidget::resized)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (QVTKOpenGLWidget::*)(QEvent * );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&QVTKOpenGLWidget::widgetEvent)) {
                *result = 2;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject QVTKOpenGLWidget::staticMetaObject = { {
    QMetaObject::SuperData::link<QWidget::staticMetaObject>(),
    qt_meta_stringdata_QVTKOpenGLWidget.data,
    qt_meta_data_QVTKOpenGLWidget,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *QVTKOpenGLWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *QVTKOpenGLWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_QVTKOpenGLWidget.stringdata0))
        return static_cast<void*>(this);
    return QWidget::qt_metacast(_clname);
}

int QVTKOpenGLWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 4)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 4;
    }
    return _id;
}

// SIGNAL 0
void QVTKOpenGLWidget::mouseEvent(QMouseEvent * _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void QVTKOpenGLWidget::resized()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void QVTKOpenGLWidget::widgetEvent(QEvent * _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
