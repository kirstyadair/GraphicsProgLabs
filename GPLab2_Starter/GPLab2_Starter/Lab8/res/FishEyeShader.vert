#version 120
varying vec4 Vertex_UV;
uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{
  gl_Position = projection * view * model * gl_Vertex;
  Vertex_UV = gl_MultiTexCoord0;
}