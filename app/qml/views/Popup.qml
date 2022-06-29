import QtQuick 2.8
import Felgo 3.0
import QtGraphicalEffects 1.12
import QtQuick.Dialogs 1.1


Page {
    id: popup_page
    title: "Popup"

    Rectangle{
        id : container
        width: parent.width / 3
        height : parent.height / 2
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        radius : 20
        color: "#f8f8f8"

        Rectangle {
            id: top_popup
            width: parent.width
            height: parent.height / 5
            anchors.top: parent.top
            anchors.topMargin: 0
            color: "#ff0000"

            Row {
                id: row
                width: parent.width
                height: parent.height

                Icon{
                    icon : IconType.warning
                    color: "#f8f8f8"
                    size : 30
                    anchors.right: attention_text.left
                    anchors.rightMargin: 30
                    anchors.verticalCenter: parent.verticalCenter

                }

                Text {
                    id: attention_text
                    color: "#f8f8f8"
                    text: qsTr("Êtes-vous sûr de votre choix ?")
                    font.family: "Arial"
                    font.letterSpacing: 1
                    font.bold: true
                    font.pointSize: 10
                    font.capitalization: Font.AllUppercase
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                IconButton{
                    icon : IconType.close
                    color: "#f8f8f8"
                    size: 30
                    anchors.right: parent.right
                    anchors.rightMargin: 10
                    anchors.verticalCenter: parent.verticalCenter

                }
            }
        }

        Column {
            id: column
            width: parent.width
            height : parent.height - top_popup.height
            anchors.bottom: parent.bottom

            Text{
                id : question
                color: "#ff0000"
                text: qsTr("En cliquant sur Confirmer, vous ne pourrez plus modifier votre vote")
                width : parent.width
                anchors.top: parent.top
                anchors.topMargin: parent.height / 5
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter
                leftPadding: parent.width / 15
                rightPadding: parent.width / 15
                wrapMode: Text.WordWrap
                font.pointSize: 16
            }

            Row{
                anchors.top: question.bottom
                anchors.topMargin: parent.height / 5
                anchors.bottom : container.bottom
                anchors.bottomMargin: parent.height / 10
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: parent.width / 10

                AppButton {
                    id: btn_confirmer
                    width: column.width / 5
                    height : column.height / 10
                    radius : 10
                    text: "Confirmer"
                }

                AppButton {
                    id: btn_annuler
                    width: column.width / 5
                    height : column.height / 10
                    radius : 10
                    text: "Annuler"
                }
            }
        }
    }


}
