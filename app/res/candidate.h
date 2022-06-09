#ifndef CANDIDATE_H
#define CANDIDATE_H

#include"person.h"

class Candidate : public Person
{
public:
    Candidate();
    Candidate(const Candidate&) = default;
    Candidate(Candidate&&) = default;
    ~Candidate() = default;

    Candidate(const QString& numCitoyen,
              const QString& firstName,
              const QString& lastName,
              const Gender& gender,
              const QDate& birth,
              const Adresse& adresse);

    friend std::ostream& operator<<(std::ostream& os, const Candidate& candidate);

};

#endif // CANDIDATE_H
