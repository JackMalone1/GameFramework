#pragma once
#include "Application.h"
extern Framework::Application* Framework::CreateApplication(int argc, char** argv);
bool g_ApplicationRunning = true;

namespace Framework
{
	int Main(int argc, char** argv)
	{
		return 0;
	}
}

int main(int argc, char** argv)
{
	return Framework::Main(argc, argv);
}