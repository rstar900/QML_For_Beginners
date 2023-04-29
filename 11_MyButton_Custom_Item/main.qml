import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property int middleY: (height / 2) - 50
    property int middleX: (width / 2) - 50


    // 3 buttons in middle
    MyButton {
        id: button1
        x: middleX - 150
        y: middleY
        color: "red"
        colorClicked: "orange"
        title: "Button 1"
    }

    MyButton {
        id: button2
        x: middleX - 20
        y: middleY
        color: "yellow"
        colorClicked: "orange"
        title: "<b>Button 2</b>"
    }

    MyButton {
        id: button3
        x: middleX + 110
        y: middleY
        color: "green"
        colorClicked: "orange"
        title: "Button <br> 3 Rocks!"
    }

    // 1 button at bottom and equal to width of atleast 3 of them and half the height
    MyButton {
        id: button4
        width: 360
        height: 50
        x: middleX - 150
        y: middleY + 120
        color: "light blue"
        colorClicked: "orange"
        title: "<b><u>Button</u> <i>4<i><b>"
    }
}
