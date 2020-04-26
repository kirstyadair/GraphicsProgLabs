uniform vec3 lightDir;
uniform vec3 cameraPos;
varying vec3 position;
varying vec3 normal;

void main()
{
	float intensity;
	vec4 color;
	vec3 directionToCamera = cameraPos - position;
	intensity = dot(directionToCamera, normal);

	if (intensity < 0.1 && intensity > -0.1)
		color = vec4(1.0,1,1,1.0);
	else
		color = vec4(0.2,0.1,0.1,1.0);
	gl_FragColor = color;
}