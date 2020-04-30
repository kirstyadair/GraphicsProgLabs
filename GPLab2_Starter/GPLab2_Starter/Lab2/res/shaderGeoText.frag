//Version number
#version 400
//Layout Qualifer
layout( location = 0 ) out vec4 fragcolor;
in vec2 TexCoords;
uniform sampler2D diffuse;
 
void main()
{
	vec4 color = vec4(0.7f,0.7f,1,1);
    fragcolor = color;
}