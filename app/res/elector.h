#ifndef ELECTOR_H
#define ELECTOR_H

#include "person.h"

class Elector : public Person
{
public:
    Elector();
    Elector(const Elector&) = default;
    Elector(Elector&&) = default;
    ~Elector() = default;

    Elector(const QString& numElector,const QString& password);

    Elector(const QString& numElector,
            const QString& password,
            const QString& numCitoyen,
            const QString& firstName,
            const QString& lastName,
            const Gender& gender,
            const QDate& birth,
            const Adresse& adresse);

    QString numElector() const;
    void setNumElector(const QString &numElector);

    QString password() const;
    void setPassword(const QString &password);

    friend std::ostream& operator<<(std::ostream& os, const Elector& elector);


private:
    QString numElector_;
    QString password_;

};

#endif // ELECTOR_H
