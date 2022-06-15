import QtQuick 2.0
import Felgo 3.0
import QtQuick.Layouts 1.1

FlickablePage
{
    id:candidateProgram
    flickable.contentHeight: Math.max(flickable.height, contentCandidateProgram.height*2 )
    flickable.contentWidth: width
    scrollIndicator.visible: true

    AppImage
    {
        height: 100
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 20
        anchors.leftMargin: 20
        source: "../assets/rep_fr.png"
        fillMode: Image.PreserveAspectFit
    }

    AppImage
    {
        height: 150
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        source: "../assets/logo.png"
        fillMode: Image.PreserveAspectFit
    }


    Column
    {
        id:contentCandidateProgram

        width: parent.width
        anchors.horizontalCenter: parent.horizontalCenter

        // Space between banner and voteelc and republique francaise picture
        anchors.top: parent.top
        anchors.topMargin: 200

        // Space between element in column
        spacing: dp(parent.width/12)

        Row
        {
            id: row
            anchors.horizontalCenter: parent.horizontalCenter
            height: 200
            spacing: dp(40)

            AppImage
            {
                id:president
                width: contentCandidateProgram.width/4
                height: contentCandidateProgram.width/4
                source:"../assets/Emmanuel_Macron.png"
            }

            AppImage
            {
                id: rectangle
                width: contentCandidateProgram.width/3
                height:dp(30)
                anchors.top: parent.top
                anchors.topMargin: president.height/2
                source:"../assets/name_box.png"

                AppText
                {
                    text:"Emmanuel Macron"
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                    fontSize: 11
                }
            }
        }

        Column
        {
            id:programSee
            width: parent.width

            AppText
            {
                text:"Apercu du programme"
                anchors.horizontalCenter: parent.horizontalCenter
            }

        }

        Rectangle
        {
            id: programCandidate
            width: parent.width
            height: dp(300)
            color:Theme.secondaryBackgroundColor
            anchors.horizontalCenter: parent.horizontalCenter
            AppText
            {
                text:"something"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }

        }

        AppImage
        {
            id: appImage
            source: "../assets/Button.png"
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width/2
            IconButton
            {

                anchors.right: parent.right
                anchors.rightMargin: 0
                icon:  IconType.download

            }

            AppText
            {

                text:"Telecharger\nle programme complet"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                horizontalAlignment: Text.AlignHCenter
            }

        }



            Row
            {
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width
                height: 300

                Rectangle
                {
                    id: rectangle1
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    color:Theme.secondaryBackgroundColor
                    width:parent.width/3
                    height:parent.height/4

                    GridLayout
                    {
                        anchors.fill: parent
                        width: parent.width
                        anchors.horizontalCenter: parent.horizontalCenter
                        IconButton
                        {
                            icon:  IconType.arrowcircleleft

                        }

                        AppText
                        {
                            text:"Retour"

                            Layout.fillHeight: true
                            Layout.fillWidth: true
                            width: parent.width
                        }

                    }
                }

                Rectangle
                {
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    color:Theme.secondaryBackgroundColor
                    width:parent.width/3
                    height:parent.height/4
                    GridLayout
                    {
                        anchors.fill: parent
                        width: parent.width
                        anchors.horizontalCenter: parent.horizontalCenter
                        AppText
                        {
                            text:"      Suivant"

                            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignHCenter
                            width: parent.width


                        }



                        IconButton
                        {
                            icon:  IconType.arrowcircleright

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
