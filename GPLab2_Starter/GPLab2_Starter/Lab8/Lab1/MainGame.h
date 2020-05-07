#pragma once
#include <SDL\SDL.h>
#include <GL/glew.h>
#include "Display.h" 
#include "Shader.h"
#include "Mesh.h"
#include "Texture.h"
#include "transform.h"
#include "Audio.h"
#include "Overlay.h"

enum class GameState{PLAY, EXIT};

class MainGame
{
public:
	MainGame();
	~MainGame();

	void run();

private:

	void initSystems();
	void processInput();
	void gameLoop();
	void drawGame();
	void setNormalShader();
	void setReflectionShader();

	void Skybox();

	GLuint skyboxVAO, skyboxVBO, cubemapTexture, modelVAO, modelVBO;
	vector<std::string> faces;

	Display _gameDisplay;
	GameState _gameState;
	Mesh mesh1;
	Mesh mesh2;
	Mesh mesh3;

	Texture texture;
	Texture skybox;

	Overlay overlay;
	Shader shaderSkybox;
	Shader shaderReflection;
	Shader shaderGeometry;
	Shader shaderNormals;

	glm::mat4 modelView;

	Camera myCamera;

	float counter;
};

