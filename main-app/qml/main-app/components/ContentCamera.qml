import QtQuick 2.0
import QtMultimedia 5.0
import "."
import "../js/helper.js" as Helper

Item {
    id: root

    onScaleChanged: {
        console.debug("Scale has changed")
    }

    VideoOutput {
        id: video
        source: camera

        anchors {
            fill: parent
        }

//		autoOrientation: true

        Camera {
            id: camera
        }
    }

    Effect {
        targetItem: video
        shaderFileName: "threshold.fs"
    }

    states: [
        State {
            name: "PortraitOrientation"
            PropertyChanges { target: root; rotation: 90 }
        },
        State {
            name: "LandscapeOrientation"
            PropertyChanges { target: root; rotation: 180 }
        },
        State {
            name: "InvertedPortraitOrientation"
            PropertyChanges { target: root; rotation: 0 }
        },
        State {
            name: "InvertedLandscapeOrientation"
            PropertyChanges { target: root; rotation: 0 }
        }
     ]

    Connections {
        target: screen
        onOrientationChanged: {
            root.state = orientation;
        }
    }
}
