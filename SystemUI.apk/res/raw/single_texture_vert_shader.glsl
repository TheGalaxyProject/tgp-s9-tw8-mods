uniform mat4 uWorldMatrix;

attribute vec4 aPosition;
attribute vec2 aTextureCordOrig;

varying vec2 vTextureCordOrig;

void main()
{
	gl_Position = uWorldMatrix * aPosition;
	vTextureCordOrig = aTextureCordOrig;
}
