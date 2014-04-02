#include <QtGui/QGuiApplication>
#include <QtQuick/QQuickView>
#include <QtQml/QQmlEngine>
#include <QtQml/QQmlContext>

#include "screenproxy.h"

int main(int argc, char **argv)
{
	QGuiApplication app(argc, argv);
	QQuickView view;

	// Set contexts
	QQmlContext *context = view.rootContext();
	context->setContextProperty("screen", new ScreenProxy());

	view.setResizeMode(QQuickView::SizeRootObjectToView);
	view.setSource(QUrl("qrc:///MainWindow.qml"));
    view.showFullScreen();

	return app.exec();
}
