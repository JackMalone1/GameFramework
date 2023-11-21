-- premake5.lua
workspace "Game Framework"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "App"

   -- Workspace-wide build options for MSVC
   filter "system:windows"
      buildoptions { "/EHsc", "/Zc:preprocessor", "/Zc:__cplusplus" }

OutputDir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"

group "Dependencies"
   include "Hazel/vendor/GLFW"
   include "Hazel/vendor/ImGui"
   include "Hazel/vendor/Box2D"
group ""

group "Core"
	include "Core/Build-Core.lua"
group ""

include "App/Build-App.lua"