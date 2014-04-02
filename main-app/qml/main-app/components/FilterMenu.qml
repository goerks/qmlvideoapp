import QtQuick 2.0
import QtQuick.Controls 1.1

Rectangle {
    id: root

    state: "open"

    states: [
        State {
            name: "open"
            PropertyChanges {
                target: root; width: 200
            }
            PropertyChanges {
                target: view; visible: true
            }
        },
        State {
            name: "closed"
            PropertyChanges {
                target: root; width: 10
            }
            PropertyChanges {
                target: view; visible: false
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
        }
        Button {
            text: "Filter2"
        }
    }

    ListView {
        id: view
        anchors { fill: parent; bottomMargin: 30 }
        model: itemModel
        preferredHighlightBegin: 0; preferredHighlightEnd: 0
        highlightRangeMode: ListView.StrictlyEnforceRange
        orientation: ListView.Vertical
        snapMode: ListView.SnapOneItem; flickDeceleration: 2000
    }

    Rectangle {
        id: swipeButton
        width: 20; height: 20
        anchors.right: parent.right
        y: (parent.height - height) / 2

        color: "black"

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
