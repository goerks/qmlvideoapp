#include <QtGui/QGuiApplication>
#include <QtQml/QQmlEngine>
#include <QtQml/QQmlContext>

//#include <xxx/controller.h>
//#include <xxx/communication.h>
//#include <xxx/udp_socket.h>

#include "application-core/application-core.h"

#include "qtquick2applicationviewer.h"

#include <QtCore/QByteArray>

namespace QmlVideoApp {

Application::Application()
{
}

int Application::execute(int argc, char * argv[])
{
    QGuiApplication app(argc, argv);

	// set the value of the environment variable QML_IMPORT_TRACE as 1
	QByteArray data = "1";
	qputenv("QML_IMPORT_TRACE", data);

    QtQuick2ApplicationViewer viewer;

//    Controller controller;
//    view.engine()->rootContext()->setContextProperty("controller", &controller);

    viewer.setMainQmlFile(QStringLiteral("qml/Core/MainWindow.qml"));
    viewer.showExpanded();

    return app.exec();
}

} // QmlVideoApp
