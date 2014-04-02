#ifndef SCREENPROXY_H
#define SCREENPROXY_H

#include <QObject>
#include <QMap>
#include <QString>
#include <QtGui/QScreen>

class ScreenProxy : public QObject
{
    Q_OBJECT
public:
    explicit ScreenProxy(QObject *parent = 0);

    Q_INVOKABLE QString getOrientation() const;

signals:
    void orientationChanged(QString orientation);

private slots:
    void mapOrientation(Qt::ScreenOrientation orientation);

private:
    QScreen             *m_screen;
    QMap<int, QString>  m_map;

};

#endif // SCREENPROXY_H
