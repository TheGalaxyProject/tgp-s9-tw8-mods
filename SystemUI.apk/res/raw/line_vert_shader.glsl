uniform mat4 uWorldMatrix;
uniform float uGroupAlpha[5];
uniform float uOverBrightness;

attribute vec4 aPosition;
attribute vec4 aColor;
attribute float aGroup;

varying vec4 vColor;

void main()
{
    gl_Position = uWorldMatrix * aPosition;
    vColor = vec4(aColor.r + uOverBrightness, aColor.g + uOverBrightness, aColor.b + uOverBrightness, aColor.a + uOverBrightness);
}
