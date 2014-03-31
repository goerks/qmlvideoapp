TARGET = QmlVideoApp
TEMPLATE = app

QT += qml quick multimedia

SOURCES += \
    main.cpp

RESOURCES += \
    main-app.qrc

OTHER_FILES += \
    common.pri

# Enable camera service
QTPLUGIN += qavfcamera

include(../common.pri)
