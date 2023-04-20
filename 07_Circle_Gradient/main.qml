import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Circle with Gradient")

    // There is no Circle object, so need to do some magic with Rectangle
    Rectangle
    {
        id: "myCircle"
        width: 200
        height: 200
        border.color: "black"
        border.width: 5
        anchors.centerIn: parent
        // radius property will do the magic
        // This will round the edges, giving it value near highest (width or height) makes it a circle
        radius: 200
        // Starting with red, at half the height orange and ending with a yellow
        // More info on https://doc.qt.io/qt-6/qml-qtquick-gradient.html
        gradient: Gradient {
            GradientStop{position: 0.0; color: "red"}
            GradientStop{position: 0.50; color: "orange"}
            GradientStop{position: 1.0; color: "yellow"}
        }
    }
}
