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


public:

    explicit Person(QObject *parent = 0) : User{parent}{}

    enum Gender
    {
        MAN,
        WOMAN,
        BOTH
    };



    explicit Person(const QString& numCitoyen,
                    const QString& firstName,
                    const QString& lastName,
                    const Gender& gender,
                    const QDate& birth,
                    const Adresse& adresse,QObject *parent) :
        User{parent},
        numCitoyen_{numCitoyen},
        firstName_{firstName},
        lastName_{lastName},
        gender_{gender},
        birth_{birth},
        adresse_{adresse}
    {
    }

    virtual ~Person() = default;

    QString numCitoyen() const{
        return numCitoyen_;
    }

    void setNumCitoyen(const QString &numCitoyen){
        numCitoyen_ = numCitoyen;
    }

    QString firstName() const{
        return firstName_;
    }

    void setFirstName(const QString &firstName){
        firstName_ = firstName;
    }

    QString lastName() const{
        return lastName_;
    }

    void setLastName(const QString &lastName){
        lastName_ = lastName;
    }

    QDate birth() const{
        return birth_;
    }

    void setBirth(const QDate &birth){
        birth_ = birth;
    }

    Adresse adresse() const{
        return adresse_;
    }

    Gender gender() const{
        return gender_;
    }

    void setGender(const Gender &gender){
        gender_ = gender;
    }


    friend std::ostream& operator<<(std::ostream& os, const Person& person)
    {
        return os << person.numCitoyen_.toStdString() << ' '
                  << person.firstName_.toStdString() << ' '
                  << person.lastName_.toStdString() <<' '
                  << (person.gender_ == MAN ? "Man " : person.gender_ == WOMAN ? "Woman " : "both ") << ' '
                  << person.birth_.toString().toStdString() << ' '
                  << person.adresse_;
    }

signals:
    void numCitoyenChanged();
    void firstNameChanged();
    void lastNameChanged();
    void genderChanged();
    void birthChanged();
    void adresseChanged();

private:
    QString numCitoyen_;
    QString firstName_;
    QString lastName_;
    Gender gender_;
    QDate birth_;
    Adresse adresse_;
};

#endif // PERSON_H
