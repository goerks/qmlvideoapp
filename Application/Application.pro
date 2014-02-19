TEMPLATE = lib

QT -= gui
QT += qml quick

INCLUDEPATH += include

SOURCES += \
    source/application.cpp

HEADERS += \
    include/application/application.h

OTHER_FILES += \
    qml/main.qml \
    application.pri

RESOURCES += \
    application.qrc
