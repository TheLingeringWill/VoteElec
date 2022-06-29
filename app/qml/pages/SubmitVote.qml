import Felgo 3.0
import QtQuick 2.8
import QtGraphicalEffects 1.0
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.1

FlickablePage
{
    id: submitVote
    property string name:""
    signal voted()

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

    Column
    {
        id: contentSubmitVote
        topPadding: dp(16) + nativeUtils.safeAreaInsets.top
        width: parent.width
        anchors.top: parent.top
        anchors.topMargin: parent.height/4
        spacing: dp(30)



        Column
        {
            id:seeCandidate
            width: parent.width
            spacing: dp(20)

            AppFlickable
            {
                width: parent.width
                height: contentHeight
                flickableDirection: Flickable.HorizontalFlick
                contentWidth: candidateRow.width
                contentHeight: candidateRow.height

                Row
                {
                    id:candidateRow
                    leftPadding: dp(Theme.contentPadding)
                    rightPadding: dp(Theme.contentPadding)
                    spacing: dp(Theme.contentPadding)

                    Component
                    {
                        id: viewCandidate


                        Column
                        {
                            id: column

                            Rectangle
                            {
                                id:coverImage
                                width:dp(150)
                                height: dp(200)
                                color:Theme.secondaryBackgroundColor

                                Column
                                {
                                    id: content
                                    width:parent.width
                                    height:width
                                    anchors.top: parent.top
                                    anchors.topMargin: 20
                                    spacing: dp(5)

                                    AppImage
                                    {
                                        source:"../../assets/Emmanuel_Macron.png"
                                        width:parent.width/2
                                        height: parent.width/2
                                        anchors.horizontalCenter: parent.horizontalCenter
                                    }

                                    Rectangle
                                    {
                                        width:parent.width/3
                                        height: parent.width/3
                                        anchors.horizontalCenter: parent.horizontalCenter
                                        color: Theme.secondaryBackgroundColor

                                        AppText
                                        {
                                            text: model.first_name + '\n' + model.last_name
                                            verticalAlignment: Text.AlignVCenter
                                            horizontalAlignment: Text.AlignHCenter
                                            anchors.fill: parent
                                            anchors.horizontalCenter: parent.horizontalCenter
                                            font.bold: true
                                            fontSize: 13
                                        }
                                    }

                                    Rectangle
                                    {
                                        id:detailCandidate
                                        width:parent.width/2
                                        height: parent.width/4
                                        anchors.horizontalCenter: parent.horizontalCenter
                                        color: Theme.secondaryBackgroundColor

                                        GridLayout
                                        {
                                            AppText
                                            {
                                                text:"Details"
                                                fontSize: 12
                                            }

                                            IconButton
                                            {
                                                icon:  IconType.diamond
                                                onClicked:
                                                {
                                                    logic.fetchCandidateDetails(model.candidate_id, model.first_name + '\n' + model.last_name,model.program,"")
                                                    submitVote.navigationStack.push(cp)
                                                }
                                            }
                                        }
                                    }
                                }


                            }

                            AppButton
                            {
                                text:"Vote"
                                anchors.horizontalCenter: parent.horizontalCenter
                                onClicked:
                                {
                                     logic.vote(model.candidate_id)
                                    console.log(model.candidate_id)
                                    submitVote.navigationStack.popAllExceptFirst()




                                }

                            }
                        }
                    }

                    Repeater
                    {
                        model:_candidateListModel
                        delegate: viewCandidate
                    }
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2;anchors_width:640}
}
##^##*/
