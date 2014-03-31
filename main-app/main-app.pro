TARGET = QmlVideoApp
TEMPLATE = app

QT += qml quick multimedia

INCLUDEPATH += include

SOURCES += \
    main.cpp \
    source/screenproxy.cpp

HEADERS += \
    include/screenproxy.h

RESOURCES += \
    main-app.qrc

OTHER_FILES += \
    common.pri

# Enable camera service
QTPLUGIN += qavfcamera

include(../common.pri)
