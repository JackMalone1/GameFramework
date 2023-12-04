#pragma once

namespace Framework
{
	class Application
	{
	public:
		Application();
		virtual ~Application();

		void Run();
		void Close();

	private:
	};
	//Implemented in App
	Application* CreateApplication(int argc, char** argv);
}
