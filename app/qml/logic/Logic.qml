import QtQuick 2.0

Item
{
    signal fetchListElection()

    signal fetchListCandidate(string nameElection)

    signal fetchCandidateDetails(string nameCandidate, string programCandidate, string sourceCandidate)

    signal fetchUserInfo()

    signal login(string numCandidate)
    signal register()

    signal logout()
}
