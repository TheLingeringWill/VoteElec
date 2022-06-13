#ifndef CANDIDATE_H
#define CANDIDATE_H

#include"person.h"

class Candidate : public Person
{
    Q_OBJECT
    Q_DISABLE_COPY(Candidate)

public:

    explicit Candidate(QObject *parent = 0) : Person{parent} {};

    explicit Candidate(const QString& numCitoyen,
                       const QString& firstName,
                       const QString& lastName,
                       const Gender& gender,
                       const QDate& birth,
                       const Adresse& adresse,
                       QObject *parent) :
        Person{numCitoyen,firstName,lastName,gender,birth,adresse,parent}
    {

    }

    ~Candidate() override = default;


    friend std::ostream& operator<<(std::ostream& os, const Candidate& candidate){
        return os << (const Person&)(candidate);

    }

};

#endif // CANDIDATE_H
