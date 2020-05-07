#version 330 core
layout (triangles) in;
layout (line_strip, max_vertices = 6) out;

in VS_OUT {
    vec3 visualiseNormal;
} gs_in[];

const float magnitude = 0.2;

void GenerateLine(int index)
{
	// Calculate the normal to visualise
    gl_Position = gl_in[index].gl_Position;
    EmitVertex();
	// Multiply by magnitude to adjust size
    gl_Position = gl_in[index].gl_Position + vec4(gs_in[index].visualiseNormal, 0.0) * magnitude;
    EmitVertex();
    EndPrimitive();
}

void main()
{
	// Generate the three vertex lines
    GenerateLine(0); 
    GenerateLine(1); 
    GenerateLine(2); 
}  