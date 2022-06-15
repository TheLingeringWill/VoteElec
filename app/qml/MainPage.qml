import Felgo 3.0
import QtQuick 2.9
import QtQuick.Layouts 1.1

FlickablePage
{
    id: flickablePage
    flickable.contentHeight: Math.max(flickable.height, contentMainPage.height + last.height)
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
        id:contentMainPage
        width: parent.width

        // Space between banner and voteelc and republique francaise picture
        anchors.top: parent.top
        anchors.topMargin: 200

        // Space between element in column
        spacing: dp(50)
        Rectangle
        {
            id: banner
            width: parent.width
            height: dp(300)

            AppImage
            {
                id: bannerImage
                source: "../assets/Banner.jpg"
                anchors.fill: parent
                fillMode: AppImage.PreserveAspectCrop

                opacity: 1
            }

            Column
            {
                id: column
                width: parent.width
                anchors.verticalCenter: parent.verticalCenter
                spacing: dp(Theme.navigationBar.defaultBarItemPadding)

                AppText
                {
                    width:parent.width
                    horizontalAlignment: AppText.AlignHCenter
                    text: "VoteElec"
                    fontSize: 40
                    color:"white"
                }

                AppText
                {
                    width:parent.width
                    horizontalAlignment: AppText.AlignHCenter
                    text: "Plus d'excuse d'avoir la flemme de voter\nVous pouvez maintenant voter a distance"
                    color:"white"
                    fontSize: 11
                }

                GridLayout
                {
                    anchors.horizontalCenter: parent.horizontalCenter

                    AppButton{
                        text:"S'enregistrer"
                    }

                    AppButton{
                        text:"S'indentifier"
                    }
                }

            }
        }

        // Pourquoi voter ?
        AppText
        {
            id:whyVote
            width:parent.width
            text:"Pourquoi voter ? "
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: AppText.AlignHCenter
        }

        // Explanation and picture of pourquoi voter ?
        GridLayout
        {
            id: explanationVote
            width:parent.width
            layoutDirection: Qt.RightToLeft

            Rectangle
            {
                width: sp(150)
                height: sp(300)
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                AppText
                {
                    text:"Il faut voter car \n.."
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.left: parent.left

                }
            }

            Rectangle
            {
                width: sp(200)
                height: sp(250)
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                AppImage
                {
                    source: "../assets/HandsVote.jpg"
                    anchors.fill: parent
                    fillMode: AppImage.PreserveAspectCrop
                }

            }

        }

        // Last picture
        Rectangle
        {
            id:last
            width:parent.width
            height: dp(300)

            AppImage
            {

                source: "../assets/Banner.jpg"
                anchors.fill: parent
                fillMode: AppImage.PreserveAspectCrop

                opacity: 1
            }
        }


}



}

/*##^##
Designer {
    D{i:0;autoSize:true;height:1080;width:1920}
}
##^##*/
