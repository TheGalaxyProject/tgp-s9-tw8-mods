uniform mat4 uWorldMatrix;

attribute vec4 aPosition;
attribute vec2 aTextureCordOrig;
attribute vec2 aTextureCordMask;

varying vec2 vTextureCordOrig;
varying vec2 vTextureCordMask;

void main()
{
	gl_Position = uWorldMatrix * aPosition;
	vTextureCordOrig = aTextureCordOrig;
	vTextureCordMask = aTextureCordMask;
}
