import QtQuick 2.8
import Felgo 3.0
import QtGraphicalEffects 1.12

FlickablePage
{
    id: userInfo

    Rectangle
    {
        width:contentProfil.width
        anchors.horizontalCenter: parent.horizontalCenter

        AppImage
        {
            height: 100
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.topMargin: 20
            anchors.leftMargin: 20
            source: "../../assets/rep_fr.png"
            fillMode: Image.PreserveAspectFit
        }

        AppImage
        {
            height: 150
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            source: "../../assets/logo.png"
            fillMode: Image.PreserveAspectFit
        }
    }

    Column
    {
        id:userInfoContent
        anchors.horizontalCenter: parent.horizontalCenter
        width:contentProfil.width
        anchors.top: parent.top
        anchors.topMargin: 200
        spacing: dp(Theme.navigationBar.defaultBarItemPadding)

        AppText
        {
            text: "Bienvenue"

        }

        Rectangle
        {
            width: parent.width

            height: dp(100)

            border.color: "#58ff00"
            border.width: 1
            anchors.horizontalCenter: parent.horizontalCenter
            layer.enabled: true
            layer.effect: DropShadow
            {
                transparentBorder: true
                horizontalOffset: 2
                verticalOffset: 2
            }



            Column
            {
                anchors.fill: parent
                width:parent.width
                spacing:dp(Theme.navigationBar.defaultBarItemPadding)
                AppText{
                    text:"Mon profil"


                    leftPadding: dp(Theme.navigationBar.defaultBarItemPadding)

                }

                Grid
                {
                    id:contentProfil
                    columns: 2
                    spacing: dp(Theme.navigationBar.defaultBarItemPadding)
                    columnSpacing: dp(Theme.navigationBar.defaultBarItemPadding)
                    leftPadding: dp(Theme.navigationBar.defaultBarItemPadding)/2
                    rightPadding: dp(Theme.navigationBar.defaultBarItemPadding)/2

                    AppText{
                        text:"Nom complet: dfkjlsssssfdsafdasd"
                        fontSize: 8

                    }

                    AppText{
                        text:"Adresse postale: fadsfadsfdasf"
                        fontSize: 8
                    }

                    AppText{
                        text:"Date de naissance:fadsfadsfdasfdasfasd"
                        fontSize: 8
                    }

                    AppText{
                        text:"Numero de telephone: 06 58 91 32 41"
                        fontSize: 8
                    }

                    AppText{
                        text:"Numéro électeur:fasdfasdfdasfd"
                        fontSize: 8
                    }

                    AppText{
                        text:"Adresse mail:fdasfdasfas"
                        fontSize: 8
                    }
                }

            }
        }

        Rectangle
        {
            id:contentListVotes
            width: parent.width


            height: dp(40) * (_electionListModel.rowCount() + 1)

            border.color: "#58ff00"
            border.width: 1
            anchors.horizontalCenter: parent.horizontalCenter
            layer.enabled: true
            layer.effect: DropShadow
            {
                transparentBorder: true
                horizontalOffset: 2
                verticalOffset: 2
            }

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
