#version 330 core
layout (location = 0) in vec3 position;
layout (location = 1) in vec3 normal;

// Block containing the normal
out VS_OUT {
    vec3 visualiseNormal;
} vs_out;

// Projection, view and model to be passed in
uniform mat4 projection;
uniform mat4 view;
uniform mat4 model;

void main()
{
	// Find the MVP matrix
	mat4 modelViewProjection = projection * view * model;
	// Convert normals with the MVP matrix, then convert to clip space coordinates
    gl_Position = modelViewProjection * vec4(position, 1.0); 
    mat3 normalMatrix = mat3(transpose(inverse(view * model)));
	// Normalise the normal and pass it to the geometry shader
    vs_out.visualiseNormal = normalize(vec3(projection * vec4(normalMatrix * normal, 0.0)));
}

