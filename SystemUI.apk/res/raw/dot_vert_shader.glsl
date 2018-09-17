uniform mat4 uWorldMatrix;
uniform float uPointSizeRatio;
uniform float uNear;
uniform float uGroupAlpha[5];
uniform float uOverBrightness;

attribute vec4 aPosition;
attribute vec4 aColor;
attribute float aGroup;
attribute float aStartTime;
attribute float aEndTime;

varying vec4 vColor;

void main()
{
    vec4 translatedPos = uWorldMatrix * aPosition;
    gl_Position = translatedPos;

    float near = uNear;
    if (near < 0.0) near *= -1.0;

    float zPos = translatedPos.z;
    if (zPos < -near) zPos = -near;

    zPos = (near + zPos) / near;
    zPos = zPos * 1.65 * uPointSizeRatio;
    if (zPos < 2.0) zPos = 2.0;
    else if (zPos > 7.0) zPos = 7.0;
	gl_PointSize = zPos;

    if (aGroup >= 0.0) {
        float groupAlpha = uGroupAlpha[int(aGroup)];
        float blankingAlpha = 0.0;
        if (aEndTime <= groupAlpha) {
            blankingAlpha = 1.0;
        } else if (aStartTime <= groupAlpha) {
            blankingAlpha = (sin(15.7075 * (groupAlpha - aStartTime) - 1.571) + 1.4) / 2.4; // 1 / 0.6 * PI, 0.5 * PI
        }

        vColor = vec4(aColor.r + uOverBrightness, aColor.g + uOverBrightness, aColor.b + uOverBrightness, (aColor.a + uOverBrightness) * blankingAlpha);
    } else {
        vColor = vec4(aColor.r + uOverBrightness, aColor.g + uOverBrightness, aColor.b + uOverBrightness, aColor.a + uOverBrightness);
    }
}