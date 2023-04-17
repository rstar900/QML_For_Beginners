import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Sonic Animated Image Example")

    // AnimatedImage is used to load gif images as they don't work with Image
    AnimatedImage {
        id: myAnimatedImage
        // Included gif for fast loading. Downloaded from https://media.giphy.com/media/brQCJIFZEU7HDdNonO/giphy.gif
        source: "sonic.gif"
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.margins: 20
    }

    Image {
        id: myImage
        // Downloaded from https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/Qt_logo_neon_2022.svg/224px-Qt_logo_neon_2022.svg.png
        source: "qt_logo.svg"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.margins: 10
    }
}
