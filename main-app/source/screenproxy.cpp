#include "screenproxy.h"

#include <QtGui/QGuiApplication>

#include <map>

ScreenProxy::ScreenProxy(QObject *parent) :
    QObject(parent)
{
    m_map[Qt::PortraitOrientation] = "PortraitOrientation";
    m_map[Qt::LandscapeOrientation] = "LandscapeOrientation";
    m_map[Qt::InvertedPortraitOrientation] = "InvertedPortraitOrientation";
    m_map[Qt::InvertedLandscapeOrientation] = "InvertedLandscapeOrientation";

    m_screen = QGuiApplication::primaryScreen();
    connect(m_screen, SIGNAL(orientationChanged(Qt::ScreenOrientation)),
            this, SLOT(mapOrientation(Qt::ScreenOrientation)));

    m_screen->setOrientationUpdateMask(
                Qt::PortraitOrientation
                | Qt::LandscapeOrientation
                | Qt::InvertedPortraitOrientation
                | Qt::InvertedLandscapeOrientation);
}

QString ScreenProxy::getOrientation() const
{
    return m_map[m_screen->orientation()];
}

void ScreenProxy::mapOrientation(Qt::ScreenOrientation orientation)
{
    emit orientationChanged(m_map[orientation]);
}
