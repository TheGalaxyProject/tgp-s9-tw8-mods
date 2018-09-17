precision mediump float;
uniform mediump sampler2D uTextureOrig;
uniform mediump vec4 uTextureRectOrig; // left, top, right, bottom
uniform mediump float uGlobalAlpha;

varying mediump vec2 vTextureCordOrig;

void main()
{
    mediump vec4 baseColor;

    if (vTextureCordOrig.x < uTextureRectOrig[0] || vTextureCordOrig.x > uTextureRectOrig[2] || vTextureCordOrig.y < uTextureRectOrig[1] || vTextureCordOrig.y > uTextureRectOrig[3]) {
        discard;
    } else {
        baseColor = texture2D(uTextureOrig, vTextureCordOrig);
    }

    baseColor.a = baseColor.a * uGlobalAlpha;
    gl_FragColor = baseColor;
}