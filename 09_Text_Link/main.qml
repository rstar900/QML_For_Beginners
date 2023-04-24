import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: myWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Text and Link")

    Text {
        id: myText
        text: qsTr("<html><b><font color='red'>Hello</b>
                    <i><font color='green'>World!</i>
                    <br><a href='https://www.google.com'>Click Me!</a></html>")
        anchors.centerIn: parent
        font.pointSize: 20
        /* Not a good idea to combine with HTML (keep either HTML or this)
          this actually applies to whole text, with HTML, we can select parts
        */
       //font.bold: true
       //font.italic: true

        linkColor: "orange"

        // the onLinkHovered and onLinkActivated are slots for
        // linkHovered and linkActivated signals
        onLinkHovered: {
            console.log("Hovering " + link)
            if(link) {
                myText.font.italic = true
                myText.font.pointSize = 35
                myText.linkColor = "green"
                myWindow.color = "black"
            } else {
                myText.font.italic = false
                myText.font.pointSize = 20
                myText.linkColor = "orange"
                myWindow.color = "white"
            }
        }

        onLinkActivated: {
            Qt.openUrlExternally(link)
        }
    }
}
