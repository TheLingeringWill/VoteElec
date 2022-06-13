#ifndef ELECTOR_H
#define ELECTOR_H

#include "person.h"

class Elector : public Person
{
    Q_OBJECT
    Q_DISABLE_COPY(Elector)

public:

    explicit Elector(QObject *parent = 0) : Person{parent} {};

    explicit Elector(const QString& numElector,const QString& password,QObject *parent):
        Person(parent),
        numElector_{numElector},
        password_{password}
    {
    }

    explicit Elector(const QString& numElector,
                     const QString& password,
                     const QString& numCitoyen,
                     const QString& firstName,
                     const QString& lastName,
                     const Gender& gender,
                     const QDate& birth,
                     const Adresse& adresse,
                     QObject *parent):
        Person{numCitoyen,firstName,lastName,gender,birth,adresse,parent},
        numElector_{numElector},
        password_{password}

    {
    }

    ~Elector() override = default;

    QString numElector() const{
        return numElector_;
    }

    void setNumElector(const QString &numElector){
        numElector_ = numElector;
    }

    QString password() const{
        return password_;
    }

    void setPassword(const QString &password){
        password_ = password;
    }

    friend std::ostream& operator<<(std::ostream& os, const Elector& elector)
    {
        return os << elector.numElector_.toStdString() << ' '
                  << elector.password_.toStdString() << ' '
                  << (const Person&)(elector);
    }


private:
    QString numElector_;
    QString password_;

};

#endif // ELECTOR_H
