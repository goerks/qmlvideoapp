import QtQuick 2.0
import QtQuick.Controls 1.1

Rectangle {
    id: root

    state: "closed"

    property int menuWidth: 100

    states: [
        State {
            name: "open"
            PropertyChanges {
                target: root; width: root.menuWidth
            }
        },
        State
        {
            name: "closed"
            PropertyChanges {
                target: root; width: swipeButton.width
            }
        }
    ]

    transitions:
        Transition {
            NumberAnimation {
                properties: "width"; duration: 200; easing.type: Easing.InOutQuad
            }
        }

    VisualItemModel {
        id: itemModel

        Button {
            text: "Filter1"
            width: parent.width
        }
        Button {
            text: "Filter2"
            width: parent.width
        }
    }

    ListView {
        id: view
        anchors.fill: parent
        anchors.margins: swipeButton.width / 2
        spacing: 5
        model: itemModel
        orientation: ListView.Vertical
        onWidthChanged: {
            console.log("scale changed")
            if(width == 0)
                visible = false
            else
                visible = true
        }
    }

    Rectangle {
        id: swipeButton
        width: menuWidth / 10; height: width * 2
        anchors.right: parent.right
        y: (parent.height - height) / 2

        color: "darkblue"

        MouseArea {
            id: swipeButtonArea
            anchors.fill: parent
            onClicked: {
                toggleState()
            }
        }
    }

    function toggleState()
    {
        if (root.state == "open")
            root.state = "closed"
        else
            root.state = "open"
    }
}
