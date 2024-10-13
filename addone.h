#ifndef ADDONE_H
#define ADDONE_H

#include <QObject>

class addOne : public QObject
{
    Q_OBJECT
public:
    explicit addOne(QObject *parent = nullptr);

    Q_INVOKABLE int add(int x);
};

#endif // ADDONE_H
