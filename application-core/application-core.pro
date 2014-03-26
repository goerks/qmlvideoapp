TEMPLATE = lib

QT += qml quick

CONFIG += staticlib

INCLUDEPATH += \
    include

SOURCES += \
    source/application-core.cpp

HEADERS += \
    include/application-core/application-core.h

OTHER_FILES += \
    qml/Core/MainWindow.qml \
    application-core.pri \
    deployment.pri

unix: QMAKE_CXXFLAGS_DEBUG += -fprofile-arcs -ftest-coverage

include(../common.pri)
include(deployment.pri)
