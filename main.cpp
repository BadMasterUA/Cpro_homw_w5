#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <QQmlContext>
#include "Counter.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<Counter>("M_Counter", 1, 0, "Counter");
    QQmlApplicationEngine engine;
    engine.loadFromModule("Home_work5_Cpro", "Main");
    if(engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
