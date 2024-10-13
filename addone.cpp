#include "addone.h"

addOne::addOne(QObject* parent) : QObject(parent){}

int addOne::add(int x)
{
    return x + 1;
}
