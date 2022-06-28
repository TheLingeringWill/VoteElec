import QtQuick 2.0
import Felgo 3.0
import QtGraphicalEffects 1.12
import QtQuick.Window 2.2
import QtQuick.Controls 2.12

Popup {
    id: popup_page



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
                    text: qsTr("Attention")
                    font.family: "Arial"
                    font.letterSpacing: 1
                    font.bold: true
                    font.pointSize: 20
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
                text: qsTr("Êtes-vous sûr de votre choix ?")
                anchors.top: parent.top
                anchors.topMargin: parent.height / 6
                horizontalAlignment: Text.AlignHCenter
                width : parent.width / 1.5
                anchors.horizontalCenter: parent.horizontalCenter
                wrapMode: Text.WordWrap
                font.pointSize: 26
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


    /*DropShadow{
    source : container
    anchors.fill : container
    color: "#ff0000"
    horizontalOffset: 3
    verticalOffset: 3
    samples : 17
    radius : 20
    }*/



}
