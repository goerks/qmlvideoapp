import QtQuick 2.0

ShaderEffect {
    id: effect
    property variant targetItem
    property string shaderFileName: "identity.fs"
    property variant uTexture: ShaderEffectSource { sourceItem: effect.targetItem; hideSource: true }

    property ListModel availableShaders: ListModel {
        ListElement {
            name: "None"
            fileName: "identity.fs"
        }
        ListElement {
            name: "Threshold"
            fileName: "threshold.fs"
        }
        ListElement {
            name: "Greyscale"
            fileName: "greyscale.fs"
        }
    }

    anchors.fill: targetItem

    fragmentShader: fileReader.readFile(":filters/identity.fs")

    onShaderFileNameChanged: {
        console.log("set filter: " + shaderFileName);
        fragmentShader = fileReader.readFile(":filters/" + shaderFileName);
    }
}
