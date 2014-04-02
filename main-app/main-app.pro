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
    qml/main-app/js/helper.js \
    qml/main-app/components/ContentCamera.qml \
    qml/main-app/MainWindow.qml \
    qml/main-app/components/FilterMenu.qml

# Enable camera service
QTPLUGIN += qavfcamera

include(../common.pri)
