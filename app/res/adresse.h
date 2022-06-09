#ifndef ADRESSE_H
#define ADRESSE_H

#include<QObject>

class Adresse
{
public:

    Adresse() = default;

    Adresse(unsigned numberStreet,
            const QString& nameStreet,
            const QString& postalCode,
            const QString& city);

    unsigned numberStreet() const;
    void setNumberStreet(const unsigned &numberStreet);

    QString nameStreet() const;
    void setNameStreet(const QString &nameStreet);

    QString postalCode() const;
    void setPostalCode(const QString &postalCode);

    friend std::ostream& operator<<(std::ostream& os, const Adresse& adresse);
private:
    unsigned numberStreet_;
    QString nameStreet_;
    QString postalCode_;
    QString city_;


};

#endif // ADRESSE_H
