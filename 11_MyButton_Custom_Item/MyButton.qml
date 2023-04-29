import QtQuick 2.15

Item {
    id : root
    height: 100
    width: 100

    // MyButton item properties (these can be modified when instantiating objects in main.qml)
    property string title: "myTitle"
    property color color: "green"
    property color colorClicked: "yellow"
    property int titleSize: 15

    Rectangle {
        id: buttonRectangle
        anchors.fill: parent
        color: parent.color

        Text {
            id: buttonText
            text: root.title
            font.pixelSize: titleSize
            anchors.centerIn: parent
        }

        // The idea is that MouseArea modifies parent's color by using root items' color value
        MouseArea {
            id: buttonMouseArea
            anchors.fill: parent // Need to fill the entire area of button (else we get invisible MouseArea)
            onPressed: parent.color = root.colorClicked
            onReleased: parent.color = root.color
        }
    }

}
