#ifndef ADRESSE_H
#define ADRESSE_H

#include<QObject>

class Adresse : public QObject
{

    Q_OBJECT
    Q_PROPERTY(unsigned numberStreet READ numberStreet WRITE setNumberStreet)
    Q_PROPERTY(QString nameStreet READ nameStreet WRITE setNameStreet)
    Q_PROPERTY(QString postalCode READ postalCode WRITE setPostalCode)
    Q_PROPERTY(QString city READ city WRITE setCity)

public:

    Adresse() = default;

    explicit Adresse(unsigned numberStreet,
            const QString& nameStreet,
            const QString& postalCode,
            const QString& city):
        numberStreet_{numberStreet},
        nameStreet_{nameStreet},
        postalCode_{postalCode},
        city_{city}
    {
    }

    Adresse(const Adresse& adresse) :
        Adresse{adresse.numberStreet_,
                adresse.nameStreet_,
                adresse.postalCode_,
                adresse.city_}
    {
    }

    unsigned numberStreet() const{
        return numberStreet_;
    }

    void setNumberStreet(const unsigned &numberStreet){
        numberStreet_ = numberStreet;
    }

    QString nameStreet() const{
        return nameStreet_;
    }

    void setNameStreet(const QString &nameStreet){
        nameStreet_ = nameStreet;
    }

    QString postalCode() const{
        return postalCode_;
    }

    void setPostalCode(const QString &postalCode){
        postalCode_ = postalCode;
    }

    QString city() const{
        return city_;
    }

    void setCity(const QString& city){
        city_ = city;
    }

    friend std::ostream& operator<<(std::ostream& os, const Adresse& adresse)
    {
        return os << adresse.numberStreet_             << ' '
                  << adresse.nameStreet_.toStdString() << ' '
                  << adresse.postalCode_.toStdString() << ' '
                  << adresse.city_.toStdString();
    }

private:
    unsigned numberStreet_;
    QString nameStreet_;
    QString postalCode_;
    QString city_;
};

#endif // ADRESSE_H
