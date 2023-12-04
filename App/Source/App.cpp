#include "Core/Core.h"
#include "Core/EntryPoint.h"

Framework::Application* CreateApplication(int argc, char** argv)
{
	auto* app = new Framework::Application();
	return app;
}