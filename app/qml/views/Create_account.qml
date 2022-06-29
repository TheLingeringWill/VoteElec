import QtQuick 2.8
import Felgo 3.0
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.4
import QtQml 2.1
import QtGraphicalEffects 1.12


FlickablePage{
    id: create_account
    flickable.contentHeight: Math.max(flickable.height, sign_in_container.height * 1.3)
    flickable.contentWidth: width
    scrollIndicator.visible: true

    ButtonGroup{
        id : sexe
    }


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
        text: qsTr("Veuillez confirmer votre identité pour créer un compte Votelec")
        anchors.top: parent.top
        anchors.topMargin: 180
        anchors.horizontalCenter: parent.horizontalCenter
        font.pointSize: 20
        horizontalAlignment: Text.AlignHCenter
        wrapMode: Text.WordWrap
        width: parent.width / 3
    }

    Rectangle{
        id : sign_in_container
        width: parent.width / 2
        height: 1200
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
            anchors.top: parent.top
            anchors.topMargin: 40
            anchors.bottom: parent.top
            anchors.bottomMargin: 40
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 40

            AppTextField {
                id: num_elec
                width: parent.width / 1.5
                height: 45
                placeholderText: "Numéro électeur"
                anchors.horizontalCenter: parent.horizontalCenter
                backgroundColor: "white"
                font.pointSize: 15
                validator: RegExpValidator {
                    regExp: /[0-9]+/
                }
                property bool rightNumElec: num_elec.text.length == 8 || num_elec.text.length == 9
                AppText {
                     text: "Votre numéro électeur valide doit contenir 8 ou 9 chiffres"
                     wrapMode: Text.WordWrap
                     color: "red"
                     fontSize: 10
                     anchors.top: num_elec.bottom
                     anchors.bottomMargin: dp(50)
                     visible: (!num_elec.rightNumElec) && (num_elec.text.length > 0)
                }
            }

            AppTextField {
                id: num_citoyen
                width: parent.width / 1.5
                height: 45
                placeholderText: "Numéro citoyen"
                anchors.horizontalCenter: parent.horizontalCenter
                backgroundColor: "white"
                font.pointSize: 15
                validator: RegExpValidator {
                    regExp: /[0-9]+/
                }
                property bool rightNumCitoyen: num_citoyen.text.length == 15
                AppText {
                     text: "Votre numéro citoyen valide doit contenir 15 chiffres"
                     wrapMode: Text.WordWrap
                     color: "red"
                     fontSize: 10
                     anchors.top: num_citoyen.bottom
                     anchors.bottomMargin: dp(50)
                     visible: (!num_citoyen.rightNumCitoyen) && (num_citoyen.text.length > 0)
                }
            }

            AppTextField {
                id: nom
                width: parent.width / 1.5
                height: 45
                placeholderText: "Nom"
                anchors.horizontalCenter: parent.horizontalCenter
                backgroundColor: "white"
                font.pointSize: 15
                validator: RegExpValidator {
                    regExp: /[A-Za-zàéèçï ]+/
                }
            }

            AppTextField {
                id: prenom
                width: parent.width / 1.5
                height: 45
                placeholderText: "Prénom"
                anchors.horizontalCenter: parent.horizontalCenter
                backgroundColor: "white"
                font.pointSize: 15
                validator: RegExpValidator {
                    regExp: /[A-Za-zàéèçï ]+/
                }
            }

            GroupBox{
                title : "Sexe"
                font.pointSize: 15
                width: parent.width / 1.5
                anchors.horizontalCenter: parent.horizontalCenter

                RowLayout{
                    spacing: parent.width / 5
                    RadioButton{
                        id : box_homme
                        ButtonGroup.group : sexe
                        text: qsTr("Homme")
                    }
                    RadioButton{
                        id : box_femme
                        ButtonGroup.group : sexe
                        text: qsTr("Femme")
                    }
                }
            }

            ColumnLayout{
                width: parent.width / 1.5
                anchors.horizontalCenter: parent.horizontalCenter
                Text{
                    id: date_text
                    text : "Date de naissance"
                    wrapMode: Text.WordWrap
                    font.pointSize: 15
                    height: 45
                }
                DatePicker{
                    id : birthday
                    datePickerMode: dateMode
                    width: parent.width
                    anchors.horizontalCenter: parent.horizontalCenter
                    dateFormat: "dd MMM yyyy"
                    startDate: "1901-01-01"
                    endDate: "2004-06-30"

                }
            }

            AppTextField {
                id: tel
                width: parent.width / 1.5
                height: 45
                placeholderText: "Numéro de téléphone"
                anchors.horizontalCenter: parent.horizontalCenter
                backgroundColor: "white"
                font.pointSize: 15
                validator: RegExpValidator {
                    regExp: /[0-9]+/
                }
                property bool correctNumber: tel.text.length == 10
                AppText {
                     text: "Un numéro de téléphone valide doit contenir 10 chiffres"
                     wrapMode: Text.WordWrap
                     color: "red"
                     fontSize: 10
                     anchors.top: tel.bottom
                     anchors.bottomMargin: dp(50)
                     visible: (!tel.correctNumber) && (tel.text.length > 0)
                }
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
                property bool rightMail: (mail.text.indexOf('@') != -1) && (mail.text.lastIndexOf('.') > mail.text.indexOf('@'))
                AppText {
                     text: "Veuillez entrer un email valide"
                     wrapMode: Text.WordWrap
                     color: "red"
                     fontSize: 10
                     anchors.top: mail.bottom
                     anchors.bottomMargin: dp(50)
                     visible: (!mail.rightMail) && (mail.text.length > 0)
                }
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
                property bool goodPassword: mdp.text.length > 7
                AppText {
                     text: "Votre mot de passe doit contenir au moins 8 caractères"
                     wrapMode: Text.WordWrap
                     color: "red"
                     fontSize: 10
                     anchors.top: mdp.bottom
                     anchors.bottomMargin: dp(50)
                     visible: (!mdp.goodPassword) && (mdp.text.length > 0)
                }
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

