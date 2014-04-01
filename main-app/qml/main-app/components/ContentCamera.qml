import QtQuick 2.0
import QtMultimedia 5.0
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

	ShaderEffect {
		property variant source: ShaderEffectSource { sourceItem: video; hideSource: true }
		property real wiggleAmount: 0.05
		anchors.fill: video

		fragmentShader: "
			varying highp vec2 qt_TexCoord0;
			uniform sampler2D source;
			uniform highp float wiggleAmount;
			void main(void)
			{
				highp vec2 wiggledTexCoord = qt_TexCoord0;
				wiggledTexCoord.s += sin(4.0 * 3.141592653589 * wiggledTexCoord.t) * wiggleAmount;
				gl_FragColor = texture2D(source, wiggledTexCoord.st);
			}
		"
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
			var str = Helper.convOrientationToString(orientation);
			root.state = str;
		}
	}
}
