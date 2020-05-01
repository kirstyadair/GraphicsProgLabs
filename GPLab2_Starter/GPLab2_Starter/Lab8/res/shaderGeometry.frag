//Version number
#version 400
//Layout Qualifer
layout( location = 0 ) out vec4 fragcolor;
in vec2 TexCoords;
 
void main()
{
	vec4 color = vec4(1,0.5f,1,1);
    fragcolor = color;
}