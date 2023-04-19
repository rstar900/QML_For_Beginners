import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("XYZ Example")

// X is left to right coordinate
// Y is top to bottom coordinate
// Z just stacks objects on top of each other depending on how high their Z value is

    Image {
        id: image
        source: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Qt_logo_2016.svg/320px-Qt_logo_2016.svg.png"
        width: 200
        height: 150
        x: 100
        y: 100
        // Image will be stacked highest as no other rectangle has z value higher than this
        // comment the line below, then they will be on same level
        z: 4
    }

    Rectangle {
        id: rectangle1
        color: "blue"
        width: 150
        height: 100
        opacity: 0.5
        x: 70
        y: 60

    }

    Rectangle {
        id: rectangle2
        color: "red"
        width: 150
        height: 100
        opacity: 0.5
        x: 200
        y: 150

    }
}
