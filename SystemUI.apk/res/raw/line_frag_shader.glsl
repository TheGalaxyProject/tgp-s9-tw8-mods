precision mediump float;
uniform mediump float uGlobalAlpha;

varying mediump vec4 vColor;

void main()
{
    float alpha = vColor.a * uGlobalAlpha;
    gl_FragColor = vec4(vColor.r, vColor.g, vColor.b, alpha);
}