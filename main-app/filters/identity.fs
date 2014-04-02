precision mediump float;
varying highp vec2 qt_TexCoord0;
uniform sampler2D uTexture;
void main() {
    lowp vec4 tex = texture2D(uTexture, qt_TexCoord0);
    gl_FragColor = tex;
}
