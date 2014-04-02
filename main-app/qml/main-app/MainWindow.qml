import QtQuick 2.0
import "components/"

Item {
	id: root

	signal clicked

	ContentCamera {
		id: camera
		anchors {
			fill: parent
		}
		state: screen.getOrientation()
	}

	Text {
		text: "Width: " + camera.width + " Height: " + camera.height
		anchors.centerIn: parent
	}

	MouseArea {
		anchors.fill: parent
		onClicked: {
			root.clicked()
		}
	}

    FilterMenu{
        id: test
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        width: 200
        color: "lightblue"
    }

}
