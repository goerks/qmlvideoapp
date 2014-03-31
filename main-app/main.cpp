#include <QtGui/QGuiApplication>

#include <QtQuick/QQuickView>

int main(int argc, char **argv)
{
	QGuiApplication app(argc, argv);

	QQuickView view;
	view.setResizeMode(QQuickView::SizeRootObjectToView);
	view.setSource(QUrl("qrc:///MainWindow.qml"));
	view.show();

	return app.exec();
}
