import QtQuick 2.0

Item
{
    signal fetchListElection()

    signal fetchListCandidate(string nameElection)

    signal fetchCandidateDetails(int idCandidate, string nameCandidate, string programCandidate, string sourceCandidate)

    signal fetchUserInfo()

    signal vote(int idCandidate)

    signal login(string numCandidate)

    signal register()

    signal logout()
}
