import QtQuick 2.9
import QtQuick.Controls 2.8
import QtQml 2.0
import Felgo 3.0
import QtQuick.Dialogs 1.1

FlickablePage
{
    id:listVotes



    Column
    {
        id: column
        width:parent.width
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: dp(20)
        AppImage
        {
            height: 150

            source: "../../assets/logo.png"
            fillMode: Image.PreserveAspectFit
        }



        Rectangle
        {
            id:contentListVotes
            width: parent.width - dp(Theme.navigationBar.defaultBarItemPadding)

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
                    text:"Vote(s) disponible(s)"

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
                        height:dp(20)
                        color:Theme.secondaryBackgroundColor
                        anchors.horizontalCenter: parent.horizontalCenter
                        AppText{
                            text:model.name
                            anchors.left: parent.left
                            anchors.leftMargin: 20
                        }

                        AppText{
                            text:model.start_date
                            anchors.horizontalCenter: parent.horizontalCenter

                        }





                        AppText{
                            id:textVote
                            text:"click here"

                            anchors.right: parent.right
                            anchors.rightMargin: 20
                            IconButton{
                                anchors.fill: parent
                                onClicked:{

                                    if( !_userInfoModel.hasVoted(model.name, dataModel.userNumElector ) )
                                    {
                                        logic.fetchListCandidate(model.name)
                                        listVotes.navigationStack.push(navSubmitVote)
                                    }
                                    else{
                                       messageDialog.visible = true
                                    }
                                }


                            }

                        }
                        MessageDialog {
                            id: messageDialog
                            title: "May I have your attention please"
                            text: "It's so cool that you are using Qt Quick."
                            onAccepted: {

                                listVotes.navigationStack.popAllExceptFirst()
                            }

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
