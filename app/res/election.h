#ifndef ELECTION_H
#define ELECTION_H

#include"candidate.h"
#include<QObject>

class Election : public QObject
{
    Q_OBJECT

public:
    Election(QObject * parent = 0) : QObject(parent) {};


    QString name() const;
    void setName(const QString &name);

    QString description() const;
    void setDescription(const QString &description);

    QDate date() const;
    void setDate(const QDate &date);

private:
    QString name_;
    QString description_;
    QDate date_;
};

#endif // ELECTION_H
