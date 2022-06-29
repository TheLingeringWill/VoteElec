import QtQuick 2.0
import Felgo 3.0

Item
{
    property alias dispatcher: logicConnection.target
    readonly property bool userLoggedIn: _.userLoggedIn
    readonly property alias userNumElector: _.userNumElector
    readonly property alias nameElection: _.nameElection

    Connections
    {
        id: logicConnection

        onFetchListElection:
        {
            _electionListModel.getElection()
        }

        onFetchListCandidate:
        {
            _candidateListModel.getCandidate(nameElection)
            _.nameElection = nameElection
            console.log(_.nameElection)


        }

        onVote:
        {
           _userInfoModel.vote(userNumElector, idCandidate, nameElection)

        }

        onFetchUserInfo:
        {
            _userInfoModel.getParticipate(userNumElector)
            console.log(userNumElector)
        }

        onLogin:
        {
            _.userNumElector = numCandidate
            console.log(_.userNumElector)
            _.userLoggedIn = true
            _userInfoModel.getParticipate(userNumElector)
       }

        onLogout: _.userLoggedIn = false
    }


    Item {
        id: _
        property bool userLoggedIn: false
        property string userNumElector: ""
        property string nameElection: ""

    }
}
