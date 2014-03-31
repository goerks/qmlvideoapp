import QtQuick 2.0

Rectangle {
	id: root

	width: 360
	height: 360

	signal clicked

	Connections {
		target: screen
		onOrientationChanged: console.log("orientationChanged:" + orientation)
	}

	Text {
		text: qsTr("Hello World")
		anchors.centerIn: parent
	}
	MouseArea {
		anchors.fill: parent
		onClicked: {
			root.clicked()
		}
	}
}
