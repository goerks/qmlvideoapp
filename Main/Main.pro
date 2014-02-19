TEMPLATE = app
TARGET = QmlVideoApp

QT_QUICK_VIEWER_PATH = $$PWD/../Application/qtquick2applicationviewer
export (QT_QUICK_VIEWER_PATH)

message($$QT_QUICK_VIEWER_PATH)

SOURCES += main.cpp

# Please do not modify the following two lines. Required for deployment.
include($$QT_QUICK_VIEWER_PATH/qtquick2applicationviewer.pri)
qtcAddDeployment()
