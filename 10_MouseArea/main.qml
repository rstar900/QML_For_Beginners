import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("MouseArea Example")

    Rectangle {
        id: myRectangle
        color: "blue"
        width: 200
        height: 200
        anchors.centerIn: parent

        // MouseArea can give much more precise information and sense more events than a TapHandler
        MouseArea {
            id: myMouseArea

            // Need to fill the parent's area to register events
            anchors.fill: parent

            // Need to enable right and left buttons to detect them
            // Also hover needs to be enabled to detect it
            acceptedButtons: Qt.LeftButton | Qt.RightButton
            hoverEnabled: true

            // Change colour based on which mouse button is pressed
            onClicked: {
                console.log("Clicked: " + mouse.button)

                if (mouse.button == Qt.LeftButton)
                    parent.color = "yellow"
                else
                    parent.color = "orange"
            }

            // Some more events
            onDoubleClicked: parent.color = "blue"
            onEntered: parent.color = "Red"
            onExited: parent.color = "green"
            onPositionChanged: console.log("X: " + mouseX + "Y: " + mouseY )
        }
    }

}
