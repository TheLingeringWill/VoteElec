import QtQuick 2.0
import Felgo 3.0

Item
{
    property alias dispatcher: logicConnection.target
    readonly property bool userLoggedIn: _.userLoggedIn
    readonly property alias userNumElector: _.userNumElector

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
        }

        onLogin:
        {
            _.userNumElector = numCandidate
            console.log(_.userNumElector)
            _.userLoggedIn = true
       }

        onLogout: _.userLoggedIn = false
    }


    Item {
        id: _
        property bool userLoggedIn: false
        property string userNumElector: ""
    }
}
