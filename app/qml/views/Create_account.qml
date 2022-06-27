import QtQuick 2.0
import Felgo 3.0
import QtQuick.Layouts 1.1

FlickablePage{
    id: create_account
    flickable.contentHeight: Math.max(flickable.height, sign_in_container.height * 1.5)
    flickable.contentWidth: width
    scrollIndicator.visible: true



    Rectangle{
        id: top_page
        width: parent.width / 3
        anchors.horizontalCenter: parent.horizontalCenter

        AppImage
        {
            height: 100
            anchors.topMargin: 40
            anchors.leftMargin: 40
            anchors.top: parent.top
            anchors.left: parent.left
            source: "../../assets/rep_fr.png"
            fillMode: Image.PreserveAspectFit
        }

        AppImage
        {
            height: 180
            anchors.top: parent.top
            anchors.right: parent.right
            source: "../../assets/logo.png"
            fillMode: Image.PreserveAspectFit
        }
    }


    Text {
        id: top_text
        text: qsTr("Munissez-vous de votre numéro électeur pour créer votre compte Votelec")
        anchors.top: parent.top
        anchors.topMargin: 180
        anchors.horizontalCenter: parent.horizontalCenter
        font.pointSize: 20
        horizontalAlignment: Text.AlignHCenter
        wrapMode: Text.WordWrap
        width: parent.width / 2
    }

    Rectangle{
        id : sign_in_container
        width: parent.width / 2
        height: 1100
        color: "#f8f8f8"
        radius: 20
        border.width: 0
        anchors.top: parent.top
        anchors.topMargin: 260
        anchors.horizontalCenter: parent.horizontalCenter

        Column{
            id: column
            width: parent.width
            height : parent.height
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 40

            AppText{
                text : " "
            }


            AppTextField {
                id: num_elec
                width: parent.width / 1.5
                height: 45
                placeholderText: "Numéro électeur"
                anchors.horizontalCenter: parent.horizontalCenter
                backgroundColor: "white"
                font.pointSize: 15
            }
            AppTextField {
                id: nom
                width: parent.width / 1.5
                height: 45
                placeholderText: "Votre nom"
                anchors.horizontalCenter: parent.horizontalCenter
                backgroundColor: "white"
                font.pointSize: 15
            }
            AppTextField {
                id: prenom
                width: parent.width / 1.5
                height: 45
                placeholderText: "Votre prénom"
                anchors.horizontalCenter: parent.horizontalCenter
                backgroundColor: "white"
                font.pointSize: 15
            }
            AppTextField {
                id: date
                width: parent.width / 1.5
                height: 45
                placeholderText: "Votre date de naissance"
                anchors.horizontalCenter: parent.horizontalCenter
                backgroundColor: "white"
                font.pointSize: 15
            }
            AppTextField {
                id: tel
                width: parent.width / 1.5
                height: 45
                placeholderText: "Votre numéro de téléphone"
                anchors.horizontalCenter: parent.horizontalCenter
                backgroundColor: "white"
                font.pointSize: 15
            }
            AppTextField {
                id: num_rue
                width: parent.width / 1.5
                height: 45
                placeholderText: "Numéro de rue"
                anchors.horizontalCenter: parent.horizontalCenter
                backgroundColor: "white"
                font.pointSize: 15
            }
            AppTextField {
                id: nom_rue
                width: parent.width / 1.5
                height: 45
                placeholderText: "Nom de rue"
                anchors.horizontalCenter: parent.horizontalCenter
                backgroundColor: "white"
                font.pointSize: 15
            }
            AppTextField {
                id: code_postal
                width: parent.width / 1.5
                height: 45
                placeholderText: "Code postal"
                anchors.horizontalCenter: parent.horizontalCenter
                backgroundColor: "white"
                font.pointSize: 15
            }
            AppTextField {
                id: ville
                width: parent.width / 1.5
                height: 45
                placeholderText: "Ville"
                anchors.horizontalCenter: parent.horizontalCenter
                backgroundColor: "white"
                font.pointSize: 15
            }
            AppTextField {
                id: mail
                inputModeEmail: 0
                width: parent.width / 1.5
                height: 45
                placeholderText: "Adresse email"
                anchors.horizontalCenter: parent.horizontalCenter
                backgroundColor: "white"
                font.pointSize: 15
            }
            AppTextField {
                id: mdp
                inputModePassword: 0
                width: parent.width / 1.5
                height: 45
                placeholderText: "Mot de passe"
                anchors.horizontalCenter: parent.horizontalCenter
                backgroundColor: "white"
                font.pointSize: 15
            }
            AppButton {
                id: btn_connect
                width: parent.width / 2
                height: 50
                radius: 10
                text: "Créer un compte"
                dropShadow: true
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }
}
