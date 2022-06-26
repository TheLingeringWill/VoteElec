import QtQuick 2.0
import Felgo 3.0

FlickablePage
{
    id: userInfo


    Column
    {
        id:userInfoContent
        anchors.horizontalCenter: parent.horizontalCenter
        width:parent.width/2
        spacing: dp(Theme.navigationBar.defaultBarItemPadding)
        AppText
        {
            text: "Bienvenue"

        }

        Rectangle
        {
            width: parent.width

            height: dp(100)

            border.color: "#0000ff"
            border.width: 1
            anchors.horizontalCenter: parent.horizontalCenter


            Column
            {
                anchors.fill: parent
                width:parent.width
                AppText{
                    text:"Mon profil"

                    anchors.left: parent.left
                    anchors.leftMargin: 5

                }

                Grid
                {
                    columns: 2
                    spacing: dp(Theme.navigationBar.defaultBarItemPadding)
                    AppText{
                        text:"blabla"
                    }

                    AppText{
                        text:"blabla"
                    }

                    AppText{
                        text:"blabla"
                    }

                    AppText{
                        text:"blabla"
                    }
                }

            }
        }

        Rectangle
        {
            id:contentListVotes
            width: parent.width


            height: dp(40) * (_electionListModel.rowCount() + 1)

            border.color: "#0000ff"
            border.width: 1
            anchors.horizontalCenter: parent.horizontalCenter

            Column
            {
                anchors.fill: parent
                width:parent.width

                id:columnContent
                spacing: dp(20)
                AppText{
                    text:"Vos Votes"

                    anchors.left: parent.left
                    anchors.leftMargin: 5

                }

                Repeater
                {
                    id:viewListVotes
                    model: _electionListModel
                    delegate: viewElection
                }


                Component
                {
                    id:viewElection

                    Rectangle
                    {
                        id:rowVote
                        width:parent.width - dp(Theme.navigationBar.defaultBarItemPadding)
                        height:dp(10)
                        color:Theme.secondaryBackgroundColor
                        anchors.horizontalCenter: parent.horizontalCenter
                        AppText{
                            id:nameElec
                            text:model.nom_election
                            anchors.left: parent.left
                            anchors.leftMargin: 20
                            fontSize: 8
                        }

                        AppText{
                            text:model.debut_election
                            anchors.horizontalCenter: parent.horizontalCenter
                            fontSize: 8

                        }



                        AppText{
                            text:"click here"
                            anchors.right: parent.right
                            anchors.rightMargin: 20
                            IconButton{
                                anchors.fill: parent
                                onClicked: listVotes.navigationStack.push(navSubmitVote)

                            }
                            fontSize: 8

                        }
                    }
                }




            }
        }


    }


}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
