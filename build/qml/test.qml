import QtQuick 2.0
import Felgo 3.0

Page{
    id: page
    property alias element: element

    Flow {
        id: element
        x: 107
        y: 34
        width: 400
        height: 400

        AppText {
            id: appText
            text: qsTr("AppText")
        }

        AppText {
            id: appText1
            text: qsTr("AppText")
        }
    }



}
