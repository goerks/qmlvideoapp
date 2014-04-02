import QtQuick 2.0
import QtQuick.Controls 1.1

Rectangle {
    id: root

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
        orientation: ListView.verticalCenter
        snapMode: ListView.SnapOneItem; flickDeceleration: 2000
    }
}
