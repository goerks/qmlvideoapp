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
    common.pri \
    qml/main-app/js/helper.js

# Enable camera service
QTPLUGIN += qavfcamera

include(../common.pri)
