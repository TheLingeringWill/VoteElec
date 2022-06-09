#include "elector.h"

Elector::Elector()
{

}

Elector::Elector(const QString& numElector,const QString& password) :
    Person(),
    numElector_(numElector),
    password_(password)
{

}

Elector::Elector(const QString& numElector,
                 const QString& password,
                 const QString& numCitoyen,
                 const QString& firstName,
                 const QString& lastName,
                 const Gender& gender,
                 const QDate& birth,
                 const Adresse& adresse):
    Person(numCitoyen,firstName,lastName,gender,birth,adresse),
    numElector_(numElector),
    password_(password)

{

}

QString Elector::numElector() const
{
    return numElector_;
}

void Elector::setNumElector(const QString &numElector)
{
    numElector_ = numElector;
}

QString Elector::password() const
{
    return password_;
}

void Elector::setPassword(const QString &password)
{
    password_ = password;
}

std::ostream& operator<<(std::ostream& os, const Elector& elector)
{
    return os << elector.numElector_.toStdString() << ' '
              << elector.password_.toStdString() << ' '
              << (const Person&)(elector);
}
