#include <QtGui/QGuiApplication>
#include <QtQuick/QQuickView>
#include <QtQml/QQmlEngine>
#include <QtQml/QQmlContext>

#include <QThread>
#include <QTimer>

//#include <xxx/controller.h>
//#include <xxx/communication.h>
//#include <xxx/udp_socket.h>

#include "application/application.h"

//#include "xxx/messagemodel.h"
//#include "xxx/usermodel.h"
//#include "xxx/eventmodel.h"

Application::Application()
{
}

int Application::execute(int argc, char * argv[])
{
    QGuiApplication application(argc, argv);
    QQuickView view;

    QQmlContext *context = view.rootContext();

    //TODO: Models initialization

    //TODO: Controller initialization

    //TODO: Context setting

    //TODO: Building of connections between the controller and models

    view.connect(view.engine(), SIGNAL(quit()), SLOT(close()));
    view.setResizeMode(QQuickView::SizeRootObjectToView);
    view.setSource(QUrl("qrc:/Screen.qml"));
//    view.setSource(QUrl("qrc:/main.qml"));
    view.show();

    return application.exec();
}
