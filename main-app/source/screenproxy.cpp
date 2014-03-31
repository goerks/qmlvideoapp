#include "screenproxy.h"

#include <QtGui/QGuiApplication>
//#include <QDesktopWidget>
#include <QtGui/QScreen>
//#include <QtGui/QWindow>

ScreenProxy::ScreenProxy(QObject *parent) :
	QObject(parent)
{
	QScreen *s = QGuiApplication::primaryScreen();
	connect(s, SIGNAL(orientationChanged(Qt::ScreenOrientation)),
			this, SIGNAL(orientationChanged(Qt::ScreenOrientation)));

	s->setOrientationUpdateMask(
				Qt::PortraitOrientation
				| Qt::LandscapeOrientation
				| Qt::InvertedPortraitOrientation
				| Qt::InvertedLandscapeOrientation);
}
