import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Image Scaling and Loading")

    // Creating a property (like a variable) to store middle of window
    property var middle: (height / 2) // Gives warning that using int or real instead var will improve speed (ignoring now)

    // This is a local image
    Image {
        id: localImage
        // A 1080p image
        source: "qrc:/Images/smile"
        // to scale it given a height or a width
        // we can use fillMode property with
        //PreserveAspectFit option to preserve aspect ratio
        width : 300
        fillMode: Image.PreserveAspectFit
        x: 300
        y: middle - 100
    }

    // This is a remote image
    Image {
        id: remoteImage
        source: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/Qt_logo_neon_2022.svg/2560px-Qt_logo_neon_2022.svg.png"
        // Scaling a 2560p image
        height: 100
        fillMode: Image.PreserveAspectFit
        x: 100
        y: middle - 50
        // Logging the progress on console
        onProgressChanged: console.log(remoteImage.progress)
        // Logging image status when it is Ready on console
        onStatusChanged: if (remoteImage.status == Image.Ready) console.log("Image Ready!")
    }
}
