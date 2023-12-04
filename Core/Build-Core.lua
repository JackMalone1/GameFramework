include "Dependencies.lua"

group "Dependencies"
include "Core/vendor/GLFW"
include "Core/vendor/Box2D"
group ""

project "Core"
   kind "StaticLib"
   language "C++"
   cppdialect "C++20"
   targetdir "Binaries/%{cfg.buildcfg}"
   staticruntime "off"

   files { 
    "Source/**.h",
    "Source/**.cpp",
    "%{prj.name}/vendor/VulkanMemoryAllocator/**.h",
    "%{prj.name}/vendor/VulkanMemoryAllocator/**.cpp",
    }

   includedirs
   {
      "Source",
      "%{IncludeDir.GLFW}",
      "%{IncludeDir.Vulkan}",
      "%{IncludeDir.VulkanSDK_LocalInclude}",
      "%{IncludeDir.glm}",
      "%{IncludeDir.Box2D}",
      "%{IncludeDir.entt}",
      "%{IncludeDir.VulkanSDK}"
   }

   links
	{ 
		"GLFW",
		"Box2D",
		"%{Library.Vulkan}",
		"%{Library.VulkanUtils}"
	}

	defines
	{
		"PX_PHYSX_STATIC_LIB", "GLM_FORCE_DEPTH_ZERO_TO_ONE"
	}

   targetdir ("../Binaries/" .. OutputDir .. "/%{prj.name}")
   objdir ("../Binaries/Intermediates/" .. OutputDir .. "/%{prj.name}")

   filter "system:windows"
       systemversion "latest"
       defines { }

   filter "configurations:Debug"
       defines { "DEBUG" }
       runtime "Debug"
       symbols "On"

   filter "configurations:Release"
       defines { "RELEASE" }
       runtime "Release"
       optimize "On"
       symbols "On"

   filter "configurations:Dist"
       defines { "DIST" }
       runtime "Release"
       optimize "On"
       symbols "Off"