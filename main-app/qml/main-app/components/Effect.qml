import QtQuick 2.0

ShaderEffect {
    id: effect
    property variant targetItem
    property variant uTexture: ShaderEffectSource { sourceItem: effect.targetItem; hideSource: true }

    anchors.fill: targetItem

    fragmentShader: "
        precision mediump float;
        varying highp vec2 qt_TexCoord0;
        uniform sampler2D uTexture;
        void main() {
            lowp vec4 tex = texture2D(uTexture, qt_TexCoord0);
            lowp vec3 intensity = vec3(0.344, 0.5, 0.156);
            //gl_FragColor = vec4(vec3(dot(tex.rgb, intensity)), tex.a);
            //gl_FragColor = vec4(1.0, 0.0, 0.0, 1.0);
            float bw = dot(tex.rgb, intensity);
            bw = (bw > .5) ? 1.0 : 0.0;
            gl_FragColor = vec4(vec3(bw), tex.a);
        }"
}
