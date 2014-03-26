TARGET = QmlVideoApp
TEMPLATE = app

SOURCES += \
	main.cpp

OTHER_FILES += \
	common.pri \
	deployment.pri \
	qml/MainWindow.qml

## Add more folders to ship with the application, here
#folder_01.source = qml/main-app
#folder_01.target = qml
#DEPLOYMENTFOLDERS = folder_01

## Additional import path used to resolve QML modules in Creator's code model
#QML_IMPORT_PATH =

## Please do not modify the following two lines. Required for deployment.
#include(qtquick2applicationviewer/qtquick2applicationviewer.pri)
#qtcAddDeployment()

include(../common.pri)
include(deployment.pri)
