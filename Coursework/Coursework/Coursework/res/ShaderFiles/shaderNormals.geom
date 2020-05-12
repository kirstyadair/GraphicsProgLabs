#version 330 core
layout (triangles) in;
layout (line_strip, max_vertices = 6) out;

// Interface block for the normal
in VS_OUT {
    vec3 visualiseNormal;
} gs_in[];

// Magnitude of the normal
float magnitude = 0.2;

void GenerateLine(int index)
{
	// Take the normal and position, and draw the normal from the position vector
    gl_Position = gl_in[index].gl_Position;
    EmitVertex();
	// Multiply by magnitude to adjust size
    gl_Position = gl_in[index].gl_Position + vec4(gs_in[index].visualiseNormal, 0.0) * magnitude;
    EmitVertex();
    EndPrimitive();
}

void main()
{
	// Generate one normal for each vertex of the triangle
    GenerateLine(0); 
    GenerateLine(1); 
    GenerateLine(2); 
}  

