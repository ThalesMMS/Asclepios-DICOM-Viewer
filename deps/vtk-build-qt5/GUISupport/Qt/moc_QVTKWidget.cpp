/****************************************************************************
** Meta object code from reading C++ file 'QVTKWidget.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.15.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../../../vtk/GUISupport/Qt/QVTKWidget.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'QVTKWidget.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.15.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_QVTKWidget_t {
    QByteArrayData data[14];
    char stringdata0[223];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_QVTKWidget_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_QVTKWidget_t qt_meta_stringdata_QVTKWidget = {
    {
QT_MOC_LITERAL(0, 0, 10), // "QVTKWidget"
QT_MOC_LITERAL(1, 11, 10), // "mouseEvent"
QT_MOC_LITERAL(2, 22, 0), // ""
QT_MOC_LITERAL(3, 23, 12), // "QMouseEvent*"
QT_MOC_LITERAL(4, 36, 5), // "event"
QT_MOC_LITERAL(5, 42, 16), // "cachedImageDirty"
QT_MOC_LITERAL(6, 59, 16), // "cachedImageClean"
QT_MOC_LITERAL(7, 76, 22), // "markCachedImageAsDirty"
QT_MOC_LITERAL(8, 99, 16), // "saveImageToCache"
QT_MOC_LITERAL(9, 116, 11), // "deferRender"
QT_MOC_LITERAL(10, 128, 16), // "doDeferredRender"
QT_MOC_LITERAL(11, 145, 26), // "automaticImageCacheEnabled"
QT_MOC_LITERAL(12, 172, 26), // "maxRenderRateForImageCache"
QT_MOC_LITERAL(13, 199, 23) // "deferRenderInPaintEvent"

    },
    "QVTKWidget\0mouseEvent\0\0QMouseEvent*\0"
    "event\0cachedImageDirty\0cachedImageClean\0"
    "markCachedImageAsDirty\0saveImageToCache\0"
    "deferRender\0doDeferredRender\0"
    "automaticImageCacheEnabled\0"
    "maxRenderRateForImageCache\0"
    "deferRenderInPaintEvent"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_QVTKWidget[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       7,   14, // methods
       3,   58, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   49,    2, 0x06 /* Public */,
       5,    0,   52,    2, 0x06 /* Public */,
       6,    0,   53,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       7,    0,   54,    2, 0x0a /* Public */,
       8,    0,   55,    2, 0x0a /* Public */,
       9,    0,   56,    2, 0x09 /* Protected */,
      10,    0,   57,    2, 0x09 /* Protected */,

 // signals: parameters
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void,
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

 // properties: name, type, flags
      11, QMetaType::Bool, 0x00095103,
      12, QMetaType::Double, 0x00095103,
      13, QMetaType::Bool, 0x00095103,

       0        // eod
};

void QVTKWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<QVTKWidget *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->mouseEvent((*reinterpret_cast< QMouseEvent*(*)>(_a[1]))); break;
        case 1: _t->cachedImageDirty(); break;
        case 2: _t->cachedImageClean(); break;
        case 3: _t->markCachedImageAsDirty(); break;
        case 4: _t->saveImageToCache(); break;
        case 5: _t->deferRender(); break;
        case 6: _t->doDeferredRender(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (QVTKWidget::*)(QMouseEvent * );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&QVTKWidget::mouseEvent)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (QVTKWidget::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&QVTKWidget::cachedImageDirty)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (QVTKWidget::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&QVTKWidget::cachedImageClean)) {
                *result = 2;
                return;
            }
        }
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<QVTKWidget *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< bool*>(_v) = _t->isAutomaticImageCacheEnabled(); break;
        case 1: *reinterpret_cast< double*>(_v) = _t->maxRenderRateForImageCache(); break;
        case 2: *reinterpret_cast< bool*>(_v) = _t->deferRenderInPaintEvent(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<QVTKWidget *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setAutomaticImageCacheEnabled(*reinterpret_cast< bool*>(_v)); break;
        case 1: _t->setMaxRenderRateForImageCache(*reinterpret_cast< double*>(_v)); break;
        case 2: _t->setDeferRenderInPaintEvent(*reinterpret_cast< bool*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
}

QT_INIT_METAOBJECT const QMetaObject QVTKWidget::staticMetaObject = { {
    QMetaObject::SuperData::link<QWidget::staticMetaObject>(),
    qt_meta_stringdata_QVTKWidget.data,
    qt_meta_data_QVTKWidget,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *QVTKWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *QVTKWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_QVTKWidget.stringdata0))
        return static_cast<void*>(this);
    return QWidget::qt_metacast(_clname);
}

int QVTKWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 7)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 7)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 7;
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 3;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 3;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 3;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 3;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 3;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void QVTKWidget::mouseEvent(QMouseEvent * _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void QVTKWidget::cachedImageDirty()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void QVTKWidget::cachedImageClean()
{
    QMetaObject::activate(this, &staticMetaObject, 2, nullptr);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
