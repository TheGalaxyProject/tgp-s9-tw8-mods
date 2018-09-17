precision mediump float;
uniform mediump sampler2D uTextureOrig;
uniform mediump sampler2D uTextureMask;
uniform mediump vec4 uTextureRectOrig; // left, top, right, bottom
uniform mediump vec4 uTextureRectMask; // left, top, right, bottom
uniform mediump float uGlobalAlpha;

varying mediump vec2 vTextureCordOrig;
varying mediump vec2 vTextureCordMask;

void main()
{
    if (vTextureCordOrig.x < uTextureRectOrig[0] || vTextureCordOrig.x > uTextureRectOrig[2] || vTextureCordOrig.y < uTextureRectOrig[1] || vTextureCordOrig.y > uTextureRectOrig[3]) {
        discard;
    } else if (vTextureCordMask.x < uTextureRectMask[0] || vTextureCordMask.x > uTextureRectMask[2] || vTextureCordMask.y < uTextureRectMask[1] || vTextureCordMask.y > uTextureRectMask[3]) {
        discard;
    } else {
        mediump vec4 origColor = texture2D(uTextureOrig, vTextureCordOrig);
        mediump vec4 maskColor = texture2D(uTextureMask, vTextureCordMask);
        if (maskColor.a > 0.0) {
            gl_FragColor = vec4(origColor.r, origColor.g, origColor.b, maskColor.a * uGlobalAlpha);
        } else {
            discard;
        }
    }
}