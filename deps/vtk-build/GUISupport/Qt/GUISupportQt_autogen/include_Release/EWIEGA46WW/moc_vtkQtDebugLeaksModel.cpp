/****************************************************************************
** Meta object code from reading C++ file 'vtkQtDebugLeaksModel.h'
**
** Created by: The Qt Meta Object Compiler version 69 (Qt 6.9.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../../vtk/GUISupport/Qt/vtkQtDebugLeaksModel.h"
#include <QtCore/qmetatype.h>

#include <QtCore/qtmochelpers.h>

#include <memory>


#include <QtCore/qxptype_traits.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'vtkQtDebugLeaksModel.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 69
#error "This file was generated using the moc from 6.9.3. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

#ifndef Q_CONSTINIT
#define Q_CONSTINIT
#endif

QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
QT_WARNING_DISABLE_GCC("-Wuseless-cast")
namespace {
struct qt_meta_tag_ZN20vtkQtDebugLeaksModelE_t {};
} // unnamed namespace

template <> constexpr inline auto vtkQtDebugLeaksModel::qt_create_metaobjectdata<qt_meta_tag_ZN20vtkQtDebugLeaksModelE_t>()
{
    namespace QMC = QtMocConstants;
    QtMocHelpers::StringRefStorage qt_stringData {
        "vtkQtDebugLeaksModel",
        "addObject",
        "",
        "vtkObjectBase*",
        "object",
        "removeObject",
        "registerObject",
        "processPendingObjects",
        "onAboutToQuit",
        "flags",
        "Qt::ItemFlags",
        "QModelIndex",
        "index"
    };

    QtMocHelpers::UintData qt_methods {
        // Slot 'addObject'
        QtMocHelpers::SlotData<void(vtkObjectBase *)>(1, 2, QMC::AccessProtected, QMetaType::Void, {{
            { 0x80000000 | 3, 4 },
        }}),
        // Slot 'removeObject'
        QtMocHelpers::SlotData<void(vtkObjectBase *)>(5, 2, QMC::AccessProtected, QMetaType::Void, {{
            { 0x80000000 | 3, 4 },
        }}),
        // Slot 'registerObject'
        QtMocHelpers::SlotData<void(vtkObjectBase *)>(6, 2, QMC::AccessProtected, QMetaType::Void, {{
            { 0x80000000 | 3, 4 },
        }}),
        // Slot 'processPendingObjects'
        QtMocHelpers::SlotData<void()>(7, 2, QMC::AccessProtected, QMetaType::Void),
        // Slot 'onAboutToQuit'
        QtMocHelpers::SlotData<void()>(8, 2, QMC::AccessProtected, QMetaType::Void),
        // Slot 'flags'
        QtMocHelpers::SlotData<Qt::ItemFlags(const QModelIndex &) const>(9, 2, QMC::AccessProtected, 0x80000000 | 10, {{
            { 0x80000000 | 11, 12 },
        }}),
    };
    QtMocHelpers::UintData qt_properties {
    };
    QtMocHelpers::UintData qt_enums {
    };
    return QtMocHelpers::metaObjectData<vtkQtDebugLeaksModel, qt_meta_tag_ZN20vtkQtDebugLeaksModelE_t>(QMC::MetaObjectFlag{}, qt_stringData,
            qt_methods, qt_properties, qt_enums);
}
Q_CONSTINIT const QMetaObject vtkQtDebugLeaksModel::staticMetaObject = { {
    QMetaObject::SuperData::link<QStandardItemModel::staticMetaObject>(),
    qt_staticMetaObjectStaticContent<qt_meta_tag_ZN20vtkQtDebugLeaksModelE_t>.stringdata,
    qt_staticMetaObjectStaticContent<qt_meta_tag_ZN20vtkQtDebugLeaksModelE_t>.data,
    qt_static_metacall,
    nullptr,
    qt_staticMetaObjectRelocatingContent<qt_meta_tag_ZN20vtkQtDebugLeaksModelE_t>.metaTypes,
    nullptr
} };

void vtkQtDebugLeaksModel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    auto *_t = static_cast<vtkQtDebugLeaksModel *>(_o);
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: _t->addObject((*reinterpret_cast< std::add_pointer_t<vtkObjectBase*>>(_a[1]))); break;
        case 1: _t->removeObject((*reinterpret_cast< std::add_pointer_t<vtkObjectBase*>>(_a[1]))); break;
        case 2: _t->registerObject((*reinterpret_cast< std::add_pointer_t<vtkObjectBase*>>(_a[1]))); break;
        case 3: _t->processPendingObjects(); break;
        case 4: _t->onAboutToQuit(); break;
        case 5: { Qt::ItemFlags _r = _t->flags((*reinterpret_cast< std::add_pointer_t<QModelIndex>>(_a[1])));
            if (_a[0]) *reinterpret_cast< Qt::ItemFlags*>(_a[0]) = std::move(_r); }  break;
        default: ;
        }
    }
}

const QMetaObject *vtkQtDebugLeaksModel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *vtkQtDebugLeaksModel::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_staticMetaObjectStaticContent<qt_meta_tag_ZN20vtkQtDebugLeaksModelE_t>.strings))
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
    }
    if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 6)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 6;
    }
    return _id;
}
namespace {
struct qt_meta_tag_ZN19ReferenceCountModelE_t {};
} // unnamed namespace

template <> constexpr inline auto ReferenceCountModel::qt_create_metaobjectdata<qt_meta_tag_ZN19ReferenceCountModelE_t>()
{
    namespace QMC = QtMocConstants;
    QtMocHelpers::StringRefStorage qt_stringData {
        "ReferenceCountModel",
        "updateReferenceCounts",
        ""
    };

    QtMocHelpers::UintData qt_methods {
        // Slot 'updateReferenceCounts'
        QtMocHelpers::SlotData<void()>(1, 2, QMC::AccessProtected, QMetaType::Void),
    };
    QtMocHelpers::UintData qt_properties {
    };
    QtMocHelpers::UintData qt_enums {
    };
    return QtMocHelpers::metaObjectData<ReferenceCountModel, qt_meta_tag_ZN19ReferenceCountModelE_t>(QMC::MetaObjectFlag{}, qt_stringData,
            qt_methods, qt_properties, qt_enums);
}
Q_CONSTINIT const QMetaObject ReferenceCountModel::staticMetaObject = { {
    QMetaObject::SuperData::link<QStandardItemModel::staticMetaObject>(),
    qt_staticMetaObjectStaticContent<qt_meta_tag_ZN19ReferenceCountModelE_t>.stringdata,
    qt_staticMetaObjectStaticContent<qt_meta_tag_ZN19ReferenceCountModelE_t>.data,
    qt_static_metacall,
    nullptr,
    qt_staticMetaObjectRelocatingContent<qt_meta_tag_ZN19ReferenceCountModelE_t>.metaTypes,
    nullptr
} };

void ReferenceCountModel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    auto *_t = static_cast<ReferenceCountModel *>(_o);
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: _t->updateReferenceCounts(); break;
        default: ;
        }
    }
    (void)_a;
}

const QMetaObject *ReferenceCountModel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *ReferenceCountModel::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_staticMetaObjectStaticContent<qt_meta_tag_ZN19ReferenceCountModelE_t>.strings))
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
    }
    if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 1)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 1;
    }
    return _id;
}
QT_WARNING_POP
