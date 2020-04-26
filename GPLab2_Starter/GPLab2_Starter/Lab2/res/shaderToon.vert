#version 400

layout (location = 0) in vec3 VertexPosition;
layout (location = 2) in vec3 VertexNormal;

varying vec3 normal;
varying vec3 position;
uniform mat4 transform;
uniform mat4 projection;

void main()
{
	normal = (transform * vec4(VertexNormal, 0.0)).xyz;
	position = (transform * vec4(VertexPosition, 1.0)).xyz;
	gl_Position = projection * vec4(position, 1.0);
}