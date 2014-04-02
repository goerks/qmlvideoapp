#include "application.h"

#include <QtGui/QGuiApplication>
#include <QtQuick/QQuickView>
#include <QtQml/QQmlEngine>
#include <QtQml/QQmlContext>

#include "screenproxy.h"
#include "filereader.h"

Application::Application()
{
}

int Application::execute(int argc, char * argv[])
{
    QGuiApplication app(argc, argv);
    QQuickView view;

    // Set contexts
    QQmlContext *context = view.rootContext();
    context->setContextProperty("screen", new ScreenProxy());
    context->setContextProperty("fileReader", new FileReader());

    view.setResizeMode(QQuickView::SizeRootObjectToView);
    view.setSource(QUrl("qrc:///MainWindow.qml"));
    view.show();

    return app.exec();
}
