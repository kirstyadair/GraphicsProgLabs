//Version number
#version 400
//Layout Qualifer
//layout( location = 0 ) out vec4 fragcolor;
in vec2 TexCoords;
uniform sampler2D diffuse;
 
void main()
{
	vec4 color = vec4(1,1,1,1);
    gl_FragColor = color;
}