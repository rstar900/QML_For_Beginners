import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Drag Rectangle XY")
    color: "black"

    Rectangle {
        id: rectangle
        color: "blue"
        width: 100
        height: 100
        //anchors.centerIn: parent // not using as this overrides positioning and gives unreliable xy coordinates and disables dragging
        x: 100
        y: 100

        function update() {
            console.log(x + " x " + y) // for debugging purpose
            label.text = qsTr(x + " x " + y) // set the rectangle text to coordinates
        }

        Component.onCompleted: update() // run update function on completion of rectangle creation
        onXChanged: update()
        onYChanged: update()

        Text {
            id: label
            text: qsTr("text")
            color: "white"
            anchors.centerIn: parent
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            drag.target: parent // set the target for drag action as parent (rectangle in this case)
        }
    }
}
