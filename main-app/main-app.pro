TARGET = QmlVideoApp
TEMPLATE = app

QT += qml quick multimedia

INCLUDEPATH += include

SOURCES += \
    main.cpp \
    source/screenproxy.cpp \
    source/application.cpp \
    source/filereader.cpp

HEADERS += \
    include/screenproxy.h \
    include/application.h \
    include/filereader.h

RESOURCES += \
    main-app.qrc

OTHER_FILES += \
    common.pri \
    qml/main-app/components/ContentCamera.qml \
    qml/main-app/MainWindow.qml \
    qml/main-app/components/FilterMenu.qml \
    qml/main-app/js/helper.js \
    filters/identity.fs \
    filters/greyscale.fs \
    filters/threshold.fs

# Enable camera service
QTPLUGIN += qavfcamera

include(../common.pri)
