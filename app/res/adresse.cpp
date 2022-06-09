#include "adresse.h"

Adresse::Adresse(unsigned numberStreet,
                 const QString& nameStreet,
                 const QString& postalCode,
                 const QString& city) :
    numberStreet_(numberStreet),
    nameStreet_(nameStreet),
    postalCode_(postalCode),
    city_(city)
{

}

unsigned Adresse::numberStreet() const
{
    return numberStreet_;
}

void Adresse::setNumberStreet(const unsigned &numberStreet)
{
    numberStreet_ = numberStreet;
}

QString Adresse::nameStreet() const
{
    return nameStreet_;
}

void Adresse::setNameStreet(const QString &nameStreet)
{
    nameStreet_ = nameStreet;
}

QString Adresse::postalCode() const
{
    return postalCode_;
}

void Adresse::setPostalCode(const QString &postalCode)
{
    postalCode_ = postalCode;
}

std::ostream& operator<<(std::ostream& os, const Adresse& adresse)
{
    return os << adresse.numberStreet_ << ' '
              << adresse.nameStreet_.toStdString() << ' '
              << adresse.postalCode_.toStdString() << ' '
              << adresse.city_.toStdString();

}
