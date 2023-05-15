import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Image {
        id: qtLogo
        width: 200
        fillMode: Image.PreserveAspectFit
        source: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/Qt_logo_neon_2022.svg/320px-Qt_logo_neon_2022.svg.png"
        anchors.centerIn: parent

        Rectangle {
            id: qtLogoRectangle
            visible: false
            color: "orange"
            opacity: 0.5
            anchors.fill: parent
        }

        MouseArea {
            id: rMouseArea
            anchors.fill: parent
            hoverEnabled: true // required for enter and exit to work
            // if you want to work with visibility then do not make it a child of rectangle
            // Otherwise, work with opacity
            onEntered: qtLogoRectangle.visible = true
            onExited: qtLogoRectangle.visible = false
            onClicked: Qt.openUrlExternally("https://www.qt.io/")
        }
    }
}
