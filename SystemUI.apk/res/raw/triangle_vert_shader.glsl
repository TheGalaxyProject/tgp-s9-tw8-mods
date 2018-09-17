uniform mat4 uWorldMatrix;

attribute vec4 aPosition;
attribute vec4 aColor;
attribute float aGroup;

varying vec4 vColor;

void main()
{
	gl_Position = uWorldMatrix * aPosition;
	vColor = aColor;
}
