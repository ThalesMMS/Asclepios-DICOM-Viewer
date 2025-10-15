/****************************************************************************
** Meta object code from reading C++ file 'QVTKTableModelAdapter.h'
**
** Created by: The Qt Meta Object Compiler version 69 (Qt 6.9.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../../vtk/GUISupport/Qt/QVTKTableModelAdapter.h"
#include <QtCore/qmetatype.h>
#include <QtCore/QList>

#include <QtCore/qtmochelpers.h>

#include <memory>


#include <QtCore/qxptype_traits.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'QVTKTableModelAdapter.h' doesn't include <QObject>."
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
struct qt_meta_tag_ZN21QVTKTableModelAdapterE_t {};
} // unnamed namespace

template <> constexpr inline auto QVTKTableModelAdapter::qt_create_metaobjectdata<qt_meta_tag_ZN21QVTKTableModelAdapterE_t>()
{
    namespace QMC = QtMocConstants;
    QtMocHelpers::StringRefStorage qt_stringData {
        "QVTKTableModelAdapter",
        "tableChanged",
        "",
        "onModified",
        "onModelReset",
        "onDataChanged",
        "QModelIndex",
        "topLeft",
        "bottomRight",
        "QList<int>",
        "roles",
        "onHeaderDataChanged",
        "Qt::Orientation",
        "orientation",
        "first",
        "last",
        "onLayoutChanged",
        "QList<QPersistentModelIndex>",
        "parents",
        "QAbstractItemModel::LayoutChangeHint",
        "hint",
        "onRowsInserted",
        "parent",
        "onRowsRemoved",
        "onRowsMoved",
        "start",
        "end",
        "destination",
        "row",
        "onColumnsInserted",
        "onColumnsRemoved",
        "onColumnsMoved",
        "column"
    };

    QtMocHelpers::UintData qt_methods {
        // Signal 'tableChanged'
        QtMocHelpers::SignalData<void()>(1, 2, QMC::AccessPublic, QMetaType::Void),
        // Slot 'onModified'
        QtMocHelpers::SlotData<void()>(3, 2, QMC::AccessProtected, QMetaType::Void),
        // Slot 'onModelReset'
        QtMocHelpers::SlotData<void()>(4, 2, QMC::AccessProtected, QMetaType::Void),
        // Slot 'onDataChanged'
        QtMocHelpers::SlotData<void(const QModelIndex &, const QModelIndex &, const QVector<int> &)>(5, 2, QMC::AccessProtected, QMetaType::Void, {{
            { 0x80000000 | 6, 7 }, { 0x80000000 | 6, 8 }, { 0x80000000 | 9, 10 },
        }}),
        // Slot 'onHeaderDataChanged'
        QtMocHelpers::SlotData<void(Qt::Orientation, int, int)>(11, 2, QMC::AccessProtected, QMetaType::Void, {{
            { 0x80000000 | 12, 13 }, { QMetaType::Int, 14 }, { QMetaType::Int, 15 },
        }}),
        // Slot 'onLayoutChanged'
        QtMocHelpers::SlotData<void(const QList<QPersistentModelIndex> &, QAbstractItemModel::LayoutChangeHint)>(16, 2, QMC::AccessProtected, QMetaType::Void, {{
            { 0x80000000 | 17, 18 }, { 0x80000000 | 19, 20 },
        }}),
        // Slot 'onRowsInserted'
        QtMocHelpers::SlotData<void(const QModelIndex &, int, int)>(21, 2, QMC::AccessProtected, QMetaType::Void, {{
            { 0x80000000 | 6, 22 }, { QMetaType::Int, 14 }, { QMetaType::Int, 15 },
        }}),
        // Slot 'onRowsRemoved'
        QtMocHelpers::SlotData<void(const QModelIndex &, int, int)>(23, 2, QMC::AccessProtected, QMetaType::Void, {{
            { 0x80000000 | 6, 22 }, { QMetaType::Int, 14 }, { QMetaType::Int, 15 },
        }}),
        // Slot 'onRowsMoved'
        QtMocHelpers::SlotData<void(const QModelIndex &, int, int, const QModelIndex &, int)>(24, 2, QMC::AccessProtected, QMetaType::Void, {{
            { 0x80000000 | 6, 22 }, { QMetaType::Int, 25 }, { QMetaType::Int, 26 }, { 0x80000000 | 6, 27 },
            { QMetaType::Int, 28 },
        }}),
        // Slot 'onColumnsInserted'
        QtMocHelpers::SlotData<void(const QModelIndex &, int, int)>(29, 2, QMC::AccessProtected, QMetaType::Void, {{
            { 0x80000000 | 6, 22 }, { QMetaType::Int, 14 }, { QMetaType::Int, 15 },
        }}),
        // Slot 'onColumnsRemoved'
        QtMocHelpers::SlotData<void(const QModelIndex &, int, int)>(30, 2, QMC::AccessProtected, QMetaType::Void, {{
            { 0x80000000 | 6, 22 }, { QMetaType::Int, 14 }, { QMetaType::Int, 15 },
        }}),
        // Slot 'onColumnsMoved'
        QtMocHelpers::SlotData<void(const QModelIndex &, int, int, const QModelIndex &, int)>(31, 2, QMC::AccessProtected, QMetaType::Void, {{
            { 0x80000000 | 6, 22 }, { QMetaType::Int, 25 }, { QMetaType::Int, 26 }, { 0x80000000 | 6, 27 },
            { QMetaType::Int, 32 },
        }}),
    };
    QtMocHelpers::UintData qt_properties {
    };
    QtMocHelpers::UintData qt_enums {
    };
    return QtMocHelpers::metaObjectData<QVTKTableModelAdapter, qt_meta_tag_ZN21QVTKTableModelAdapterE_t>(QMC::MetaObjectFlag{}, qt_stringData,
            qt_methods, qt_properties, qt_enums);
}
Q_CONSTINIT const QMetaObject QVTKTableModelAdapter::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_staticMetaObjectStaticContent<qt_meta_tag_ZN21QVTKTableModelAdapterE_t>.stringdata,
    qt_staticMetaObjectStaticContent<qt_meta_tag_ZN21QVTKTableModelAdapterE_t>.data,
    qt_static_metacall,
    nullptr,
    qt_staticMetaObjectRelocatingContent<qt_meta_tag_ZN21QVTKTableModelAdapterE_t>.metaTypes,
    nullptr
} };

void QVTKTableModelAdapter::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    auto *_t = static_cast<QVTKTableModelAdapter *>(_o);
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: _t->tableChanged(); break;
        case 1: _t->onModified(); break;
        case 2: _t->onModelReset(); break;
        case 3: _t->onDataChanged((*reinterpret_cast< std::add_pointer_t<QModelIndex>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<QModelIndex>>(_a[2])),(*reinterpret_cast< std::add_pointer_t<QList<int>>>(_a[3]))); break;
        case 4: _t->onHeaderDataChanged((*reinterpret_cast< std::add_pointer_t<Qt::Orientation>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[2])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[3]))); break;
        case 5: _t->onLayoutChanged((*reinterpret_cast< std::add_pointer_t<QList<QPersistentModelIndex>>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<QAbstractItemModel::LayoutChangeHint>>(_a[2]))); break;
        case 6: _t->onRowsInserted((*reinterpret_cast< std::add_pointer_t<QModelIndex>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[2])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[3]))); break;
        case 7: _t->onRowsRemoved((*reinterpret_cast< std::add_pointer_t<QModelIndex>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[2])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[3]))); break;
        case 8: _t->onRowsMoved((*reinterpret_cast< std::add_pointer_t<QModelIndex>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[2])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[3])),(*reinterpret_cast< std::add_pointer_t<QModelIndex>>(_a[4])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[5]))); break;
        case 9: _t->onColumnsInserted((*reinterpret_cast< std::add_pointer_t<QModelIndex>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[2])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[3]))); break;
        case 10: _t->onColumnsRemoved((*reinterpret_cast< std::add_pointer_t<QModelIndex>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[2])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[3]))); break;
        case 11: _t->onColumnsMoved((*reinterpret_cast< std::add_pointer_t<QModelIndex>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[2])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[3])),(*reinterpret_cast< std::add_pointer_t<QModelIndex>>(_a[4])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[5]))); break;
        default: ;
        }
    }
    if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        switch (_id) {
        default: *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType(); break;
        case 3:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType(); break;
            case 2:
                *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType::fromType< QList<int> >(); break;
            }
            break;
        }
    }
    if (_c == QMetaObject::IndexOfMethod) {
        if (QtMocHelpers::indexOfMethod<void (QVTKTableModelAdapter::*)()>(_a, &QVTKTableModelAdapter::tableChanged, 0))
            return;
    }
}

const QMetaObject *QVTKTableModelAdapter::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *QVTKTableModelAdapter::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_staticMetaObjectStaticContent<qt_meta_tag_ZN21QVTKTableModelAdapterE_t>.strings))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int QVTKTableModelAdapter::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 12)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 12;
    }
    if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 12)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 12;
    }
    return _id;
}

// SIGNAL 0
void QVTKTableModelAdapter::tableChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}
QT_WARNING_POP
