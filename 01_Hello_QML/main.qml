import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello QML")
    color: "blue"

    Text {
        id: helloWorldTextElement
        text: qsTr("Hello, QML!")
        color: "yellow"
        anchors.centerIn: parent
        font.bold: true
        font.pixelSize: 25
    }

}
