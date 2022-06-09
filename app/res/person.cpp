#include "person.h"

Person::Person(const QString& numCitoyen,
               const QString& firstName,
               const QString& lastName,
               const Gender& gender,
               const QDate& birth,
               const Adresse& adresse) :
            numCitoyen_(numCitoyen),
            firstName_(firstName),
            lastName_(lastName),
            gender_(gender),
            birth_(birth),
            adresse_(adresse)
        {

        }

QString Person::numCitoyen() const
{
    return numCitoyen_;
}

void Person::setNumCitoyen(const QString &numCitoyen)
{
    numCitoyen_ = numCitoyen;
}

QString Person::firstName() const
{
    return firstName_;
}

void Person::setFirstName(const QString &firstName)
{
    firstName_ = firstName;
}

QString Person::lastName() const
{
    return lastName_;
}

void Person::setLastName(const QString &lastName)
{
    lastName_ = lastName;
}

QDate Person::birth() const
{
    return birth_;
}

void Person::setBirth(const QDate &birth)
{
    birth_ = birth;
}

Adresse Person::adresse() const
{
    return adresse_;
}

void Person::setAdresse(const Adresse &adresse)
{
    adresse_ = adresse;
}

std::ostream& operator<<(std::ostream& os, const Person& person)
{
    return os << person.numCitoyen_.toStdString() << ' '
              << person.firstName_.toStdString() << ' '
              << person.lastName_.toStdString() <<' '
              << (person.gender_ == MAN ? "Man " : person.gender_ == WOMAN ? "Woman " : "both ") << ' '
              << person.birth_.toString().toStdString() << ' '
              << person.adresse_;
}

