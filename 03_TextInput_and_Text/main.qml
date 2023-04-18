import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("TextInput and Text")

    Image {
        id: myImage
        source: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/Qt_logo_neon_2022.svg/224px-Qt_logo_neon_2022.svg.png"
        width: 200
        height: 150
        anchors.centerIn: parent
        opacity: 0.25
    }

    TextInput {
        id: myTextInput
        text: "Hello Qt!"
        color: "blue"
        font.pixelSize: 25
        font.bold: true
        anchors.centerIn: parent
    }

    Text {
        id: myText
        text: myTextInput.text // TextInput is emitting a signal on text change and Text object has a slot catching it
        color: "green"
        font.pixelSize: 25
        font.bold: true
    }
}
