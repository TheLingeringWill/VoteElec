#include "candidate.h"

Candidate::Candidate(const QString& numCitoyen,
                      const QString& firstName,
                      const QString& lastName,
                      const Gender& gender,
                      const QDate& birth,
                      const Adresse& adresse) :
    Person(numCitoyen,firstName,lastName,gender,birth,adresse)
{

}

std::ostream& operator<<(std::ostream& os, const Candidate& candidate)
{
    return os << (const Person&)(candidate);
}
