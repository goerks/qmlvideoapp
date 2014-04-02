precision mediump float;
varying highp vec2 qt_TexCoord0;
uniform sampler2D uTexture;
void main() {
    lowp vec4 tex = texture2D(uTexture, qt_TexCoord0);
    lowp vec3 intensity = vec3(0.344, 0.5, 0.156);
    gl_FragColor = vec4(vec3(dot(tex.rgb, intensity)), tex.a);
}
