import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Parent Child Example")

    Image {
        id: image
        source: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Qt_logo_2016.svg/320px-Qt_logo_2016.svg.png"
        width: 200
        height: 150
        x: 100
        y: 100
        // Image will no longer be stacked over rectangles as they are now it's children
        // Nor rectangles can stack on top of image (atleast by using z property)
        z: 4

        Rectangle {
            id: rectangle1
            color: "blue"
            width: 150
            height: 100
            opacity: 0.5
            // x and y will now be relative to the parent (so 0,0 will be inside the parent and so on)
            x: -20
            y: -50
            // but stacking below the parent is possible by using negative values
            z: -1

        }

        Rectangle {
            id: rectangle2
            color: "red"
            width: 150
            height: 100
            opacity: 0.5
            x: parent.width - 100
            y: parent.height - 80

        }
    }




}
