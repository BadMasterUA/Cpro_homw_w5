#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "addone.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<addOne>("M_AddOneClick", 1, 0, "AddOne");
    QQmlApplicationEngine engine;
    engine.loadFromModule("Home_work5_Cpro", "Main");

    return app.exec();
}
