#ifndef SCREENPROXY_H
#define SCREENPROXY_H

#include <QtCore/QObject>


class ScreenProxy : public QObject
{
	Q_OBJECT
public:
	explicit ScreenProxy(QObject *parent = 0);

signals:
	void orientationChanged(Qt::ScreenOrientation orientation);

};

#endif // SCREENPROXY_H
