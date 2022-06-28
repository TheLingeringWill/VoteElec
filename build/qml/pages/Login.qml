import QtQuick 2.0
import Felgo 3.0

Page {
    id: login

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

    Rectangle {
        id: rect_connexion
        width: parent.width / 3
        height: parent.height / 2
        color: "#f8f8f8"
        radius: 20
        border.width: 0
        anchors.top: parent.top
        anchors.topMargin: 180
        anchors.horizontalCenter: parent.horizontalCenter

        Column {
            id: column
            anchors.bottomMargin: 10
            anchors.topMargin: 10
            anchors.fill: parent
            spacing: parent.height / 12

            Text {
                id: texte
                width: parent.width
                text: "Veuillez saisir vos identifiants pour vous connecter à votre espace électeur"
                wrapMode: Text.WordWrap
                transformOrigin: Item.Center
                anchors.horizontalCenter: parent.horizontalCenter
                font.family: "Arial"
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 20
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
                id: mdp
                width: parent.width / 1.5
                height: 45
                passwordCharacter: qsTr("●")
                passwordVisible: true
                inputModePassword: 0
                placeholderText: "Mot de passe"
                font.pointSize: 15
                backgroundColor: "white"
                anchors.horizontalCenter: parent.horizontalCenter
            }

            AppButton {
                id: btn_connect
                width: parent.width / 2
                height: 50
                radius: 10
                text: "Se connecter"
                dropShadow: true
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked:
                {
                   if(_userInfoModel.isLogged(num_elec.text , mdp.text) ){
                       login.navigationStack.popAllExceptFirst()
                       logic.login(num_elec.text)

                   }
                   else {
                       errorLogin.visible=true
                   }
                }
            }

            AppText{
                id:errorLogin
                text:"Wrong parameter"
                visible: false
                anchors.horizontalCenter: parent.horizontalCenter
                color:"red"
            }
        }
    }



    Rectangle{
        id : footer
        width: parent.width
        height : parent.height / 8
        color: "#f8f8f8"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0

        Text{
            id : hyperlinkText
            text: "Vous n'avez pas de compte électeur ? Cliquez ici pour en créer un"
            wrapMode: Text.WordWrap
            width : parent.width / 4
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: Text.AlignHCenter
            IconButton{
                anchors.fill : parent
                onClicked: login.navigationStack.push(create_account_component)
            }

        }
    }


}

