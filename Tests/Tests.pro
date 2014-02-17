# Add more folders to ship with the application, here
folder_01.source = .
folder_01.target = qml
DEPLOYMENTFOLDERS = folder_01

# Additional import path used to resolve QML modules in Creator's code model
QML_IMPORT_PATH =

# The .cpp file which was generated for your project. Feel free to hack it.

#QT += qmltest
#QT -= gui

CONFIG += qmltestcase
#CONFIG -= app_bundle

DEFINES += QUICK_TEST_SOURCE_DIR=\\\"$$PWD\\\"

SOURCES += \
    test.cpp

# Installation path
# target.path =

# Please do not modify the following two lines. Required for deployment.
include(qtquick2applicationviewer/qtquick2applicationviewer.pri)
qtcAddDeployment()

OTHER_FILES += \
    utils.js \
    tst_screen.qml
