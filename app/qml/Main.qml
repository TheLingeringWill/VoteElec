import Felgo 3.0
import QtQuick 2.0
import com.yourcompany.wizardEVAP.VoteElec 1.0

App {
    // You get free licenseKeys from https://felgo.com/licenseKey
    // With a licenseKey you can:
    //  * Publish your games & apps for the app stores
    //  * Remove the Felgo Splash Screen or set a custom one (available with the Pro Licenses)
    //  * Add plugins to monetize, analyze & improve your apps (available with the Pro Licenses)
    //licenseKey: "<generate one from https://felgo.com/licenseKey>"

    NavigationStack {

        Page {
            title: qsTr("Main Page2")

            AppTextField {
                Person{
                    id:person


                }
                text: person.firstName
                placeholderText: qsTr("jfjd")
                anchors.centerIn:parent


                onTextChanged: {
                    person.firstName = text
                    console.log(election.firstName)

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
