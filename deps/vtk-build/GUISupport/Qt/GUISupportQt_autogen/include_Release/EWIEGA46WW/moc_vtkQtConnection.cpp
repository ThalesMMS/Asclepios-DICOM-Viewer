/****************************************************************************
** Meta object code from reading C++ file 'vtkQtConnection.h'
**
** Created by: The Qt Meta Object Compiler version 69 (Qt 6.9.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../../vtk/GUISupport/Qt/vtkQtConnection.h"
#include <QtCore/qmetatype.h>

#include <QtCore/qtmochelpers.h>

#include <memory>


#include <QtCore/qxptype_traits.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'vtkQtConnection.h' doesn't include <QObject>."
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
struct qt_meta_tag_ZN15vtkQtConnectionE_t {};
} // unnamed namespace

template <> constexpr inline auto vtkQtConnection::qt_create_metaobjectdata<qt_meta_tag_ZN15vtkQtConnectionE_t>()
{
    namespace QMC = QtMocConstants;
    QtMocHelpers::StringRefStorage qt_stringData {
        "vtkQtConnection",
        "EmitExecute",
        "",
        "vtkObject*",
        "client_data",
        "call_data",
        "vtkCommand*",
        "deleteConnection"
    };

    QtMocHelpers::UintData qt_methods {
        // Signal 'EmitExecute'
        QtMocHelpers::SignalData<void(vtkObject *, unsigned long, void *, void *, vtkCommand *)>(1, 2, QMC::AccessPublic, QMetaType::Void, {{
            { 0x80000000 | 3, 2 }, { QMetaType::ULong, 2 }, { QMetaType::VoidStar, 4 }, { QMetaType::VoidStar, 5 },
            { 0x80000000 | 6, 2 },
        }}),
        // Slot 'deleteConnection'
        QtMocHelpers::SlotData<void()>(7, 2, QMC::AccessProtected, QMetaType::Void),
    };
    QtMocHelpers::UintData qt_properties {
    };
    QtMocHelpers::UintData qt_enums {
    };
    return QtMocHelpers::metaObjectData<vtkQtConnection, qt_meta_tag_ZN15vtkQtConnectionE_t>(QMC::MetaObjectFlag{}, qt_stringData,
            qt_methods, qt_properties, qt_enums);
}
Q_CONSTINIT const QMetaObject vtkQtConnection::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_staticMetaObjectStaticContent<qt_meta_tag_ZN15vtkQtConnectionE_t>.stringdata,
    qt_staticMetaObjectStaticContent<qt_meta_tag_ZN15vtkQtConnectionE_t>.data,
    qt_static_metacall,
    nullptr,
    qt_staticMetaObjectRelocatingContent<qt_meta_tag_ZN15vtkQtConnectionE_t>.metaTypes,
    nullptr
} };

void vtkQtConnection::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    auto *_t = static_cast<vtkQtConnection *>(_o);
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: _t->EmitExecute((*reinterpret_cast< std::add_pointer_t<vtkObject*>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<ulong>>(_a[2])),(*reinterpret_cast< std::add_pointer_t<void*>>(_a[3])),(*reinterpret_cast< std::add_pointer_t<void*>>(_a[4])),(*reinterpret_cast< std::add_pointer_t<vtkCommand*>>(_a[5]))); break;
        case 1: _t->deleteConnection(); break;
        default: ;
        }
    }
    if (_c == QMetaObject::IndexOfMethod) {
        if (QtMocHelpers::indexOfMethod<void (vtkQtConnection::*)(vtkObject * , unsigned long , void * , void * , vtkCommand * )>(_a, &vtkQtConnection::EmitExecute, 0))
            return;
    }
}

const QMetaObject *vtkQtConnection::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *vtkQtConnection::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_staticMetaObjectStaticContent<qt_meta_tag_ZN15vtkQtConnectionE_t>.strings))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int vtkQtConnection::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 2)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    }
    if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 2)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 2;
    }
    return _id;
}

// SIGNAL 0
void vtkQtConnection::EmitExecute(vtkObject * _t1, unsigned long _t2, void * _t3, void * _t4, vtkCommand * _t5)
{
    QMetaObject::activate<void>(this, &staticMetaObject, 0, nullptr, _t1, _t2, _t3, _t4, _t5);
}
QT_WARNING_POP
