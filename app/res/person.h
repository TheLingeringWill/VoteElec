#ifndef PERSON_H
#define PERSON_H

#include"User.h"
#include "adresse.h"

#include <QDate>

class Person : public User
{
    Q_OBJECT
    Q_DISABLE_COPY(Person)
    Q_PROPERTY(QString numCitoyen READ numCitoyen WRITE setNumCitoyen NOTIFY numCitoyenChanged)
    Q_PROPERTY(QString firstName READ firstName WRITE setFirstName NOTIFY firstNameChanged)
    Q_PROPERTY(QString lastName READ lastName WRITE setLastName NOTIFY lastNameChanged)
    Q_PROPERTY(GENDER gender READ gender WRITE setGender NOTIFY genderChanged)

public:

    explicit Person(QObject *parent = 0) : User(parent){}

    enum Gender
    {
        MAN,
        WOMAN,
        BOTH
    };

    Q_ENUM(Gender)

    Person(const QString& numCitoyen,
           const QString& firstName,
           const QString& lastName,
           const Gender& gender,
           const QDate& birth,
           const Adresse& adresse,QObject *parent) :
        User(parent),
        numCitoyen_(numCitoyen),
        firstName_(firstName),
        lastName_(lastName),
        gender_(gender),
        birth_(birth){}

    virtual ~Person() = default;

    QString numCitoyen() const;

    void setNumCitoyen(const QString &numCitoyen);

    QString firstName() const;

    void setFirstName(const QString &firstName);

    QString lastName() const;

    void setLastName(const QString &lastName);

    QDate birth() const;

    void setBirth(const QDate &birth);

    Adresse adresse() const;



    friend std::ostream& operator<<(std::ostream& os, const Person& person);

private:
    QString numCitoyen_;
    QString firstName_;
    QString lastName_;
    Gender  gender_;
    QDate birth_;
    Adresse adresse_;
};


inline QString Person::numCitoyen() const
{
    return numCitoyen_;
}

inline void Person::setNumCitoyen(const QString &numCitoyen)
{
    numCitoyen_ = numCitoyen;
}

inline QString Person::firstName() const
{
    return firstName_;
}

inline void Person::setFirstName(const QString &firstName)
{
    firstName_ = firstName;
}

inline QString Person::lastName() const
{
    return lastName_;
}

inline void Person::setLastName(const QString &lastName)
{
    lastName_ = lastName;
}

inline QDate Person::birth() const
{
    return birth_;
}

inline void Person::setBirth(const QDate &birth)
{
    birth_ = birth;
}

inline Adresse Person::adresse() const
{
    return adresse_;
}



inline std::ostream& operator<<(std::ostream& os, const Person& person)
{
    return os << person.numCitoyen_.toStdString() << ' '
              << person.firstName_.toStdString() << ' '
              << person.lastName_.toStdString() <<' '
              << (person.gender_ == 0 ? "Man " : person.gender_ == 1 ? "Woman " : "both ") << ' '
              << person.birth_.toString().toStdString() << ' '
              << person.adresse_;
}

#endif // PERSON_H
