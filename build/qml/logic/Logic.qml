import QtQuick 2.0

Item
{
    signal fetchListVotes()

    signal fetchListCandidates()

    signal fetchCandidateDetails(string nameCandidate, string programCandidate, string sourceCandidate)

    signal fetchUserInfo()

    signal login()

    signal register()

    signal logout()
}
