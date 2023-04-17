import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    // No need to put it as id, there can be only one root. And id has to be unique
    id: root

    Image {
        id: myImage
        /* HTTPS does not work on windows
          if openssl binaries are not selected during installation
          can be installed from Maintenance tool under developer and
          designer tools. Also Add path variable Qt\Tools\OpenSSL\Win_x64\bin
          */
        source: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/Qt_logo_neon_2022.svg/1280px-Qt_logo_neon_2022.svg.png"
        anchors.centerIn: parent // anchor is anchoring (holding) relative to parent here
        width: 320
        height: 240

        Rectangle {
            id: myRectangle
            width: 300
            height: 240
            color: "blue"
            anchors.centerIn: parent
            opacity: 0.5 // 0.0 - 1.0, 0.5 means 50%
        }
    }
}
