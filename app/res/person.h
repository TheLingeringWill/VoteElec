#ifndef PERSON_H
#define PERSON_H

#include "adresse.h"
#include "Gender.h"
#include <QDate>

class Person
{
public:

    Person() = default;
    Person(const Person&) = default;
    Person(Person&&) = default;
    ~Person() = default;
    Person(const QString& numCitoyen,
           const QString& firstName,
           const QString& lastName,
           const Gender& gender,
           const QDate& birth,
           const Adresse& adresse);

    QString numCitoyen() const;
    void setNumCitoyen(const QString &numCitoyen);

    QString firstName() const;
    void setFirstName(const QString &firstName);

    QString lastName() const;
    void setLastName(const QString &lastName);

    QDate birth() const;
    void setBirth(const QDate &birth);

    Adresse adresse() const;
    void setAdresse(const Adresse &adresse);

    friend std::ostream& operator<<(std::ostream& os, const Person& person);


private:
    QString numCitoyen_;
    QString firstName_;
    QString lastName_;
    Gender  gender_;
    QDate birth_;
    Adresse adresse_;


};

#endif // PERSON_H
