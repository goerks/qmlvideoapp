TARGET = QmlVideoApp
TEMPLATE = app

SOURCES += \
    main.cpp

OTHER_FILES += \
    common.pri \
    deployment.pri \
    qml/main-app/MainWindow.qml

include(../common.pri)
include(deployment.pri)
