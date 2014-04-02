import QtQuick 2.0
import QtQuick.Controls 1.1
import "components/"

Item {
	id: root

    width: 640
    height: 480

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
        menuWidth: parent.width / 4
        color: "#77add9e6"
    }
}
