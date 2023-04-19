import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Tap Handler and 2 Boxes")

    Rectangle {
        id: rec1
        height: 100
        width: 100
        // When tapped (or clicked in this case), then change the color of the rectangle to red
        // this is possible due to the TapHandler defined for each rectangle
        color: myTapHandler.pressed ? "red" : "blue"
        x: 50
        y: 50

        TapHandler {
            id: myTapHandler
        }
    }

    Rectangle {
        id: rec2
        height: 100
        width: 100
        color: myTapHandler2.pressed ? "red" : "blue"
        x: 180
        y: 50

        TapHandler {
            id: myTapHandler2
        }
    }


}
