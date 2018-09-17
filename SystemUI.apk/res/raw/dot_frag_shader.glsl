precision mediump float;
uniform mediump float uGlobalAlpha;

varying mediump vec4 vColor;

void main()
{
    float xDistance = 0.5 - gl_PointCoord.x;
    float yDistance = 0.5 - gl_PointCoord.y;
    float distanceFromCenter = sqrt(xDistance * xDistance + yDistance * yDistance);

    if (distanceFromCenter > 0.5) {
        discard;
    } else {
        gl_FragColor = vec4(vColor.r, vColor.g, vColor.b, vColor.a * uGlobalAlpha);
    }
}