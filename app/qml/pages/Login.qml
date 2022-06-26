import QtQuick 2.0
import Felgo 3.0

Page {
    id: login

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

    Rectangle {
        id: rect_connexion
        width: parent.width / 3
        height: 500
        color: Theme.secondaryBackgroundColor
        radius: 20
        anchors.top: parent.top
        anchors.topMargin: 200
        anchors.horizontalCenter: parent.horizontalCenter


        Column {
            id: column
            width: parent.width
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 40

            Text {
                id: texte
                width: parent.width
                text: "Veuillez saisir vos identifiants pour vous connecter à votre espace électeur"
                wrapMode: Text.WordWrap
                anchors.horizontalCenterOffset: 0
                transformOrigin: Item.Center
                anchors.horizontalCenter: parent.horizontalCenter
                font.family: "Arial"
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 24
            }


            AppTextField {
                id: num_elec
                width: parent.width / 1.5

                placeholderText: "Numéro électeur"
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 15
                backgroundColor: "white"
            }


            AppTextField {
                id: mdp
                width: parent.width / 1.5

                placeholderText: "Mot de passe"
                font.pointSize: 15
                anchors.horizontalCenter: parent.horizontalCenter
                backgroundColor: "white"
            }



            AppButton {
                    id: btn_connect
                    width: parent.width / 2

                    radius: 10
                    text: "Se connecter"
                    borderColor: "#43ffdd"
                    dropShadow: true
                    anchors.horizontalCenter: parent.horizontalCenter
                }



        }




    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
