outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

VULKAN_SDK = os.getenv("VULKAN_SDK")

IncludeDir = {}
IncludeDir["GLFW"] = "%{wks.location}/Core/vendor/GLFW/include"
IncludeDir["glm"] = "%{wks.location}/Core/vendor/glm"
IncludeDir["Box2D"] = "%{wks.location}/Core/vendor/Box2D/include"
IncludeDir["entt"] = "%{wks.location}/Core/vendor/entt/include"
IncludeDir["VulkanSDK"] = "%{VULKAN_SDK}/Include"
IncludeDir["VulkanSDK_LocalInclude"] = "%{wks.location}/Core/vendor/VulkanSDK/Include"

LibraryDir = {}

LibraryDir["VulkanSDK"] = "%{VULKAN_SDK}/Lib"
Library = {}

Library["Vulkan"] = "%{LibraryDir.VulkanSDK}/vulkan-1.lib"
Library["VulkanUtils"] = "%{LibraryDir.VulkanSDK}/VkLayer_utils.lib"
Library["dxc"] = "%{LibraryDir.VulkanSDK}/dxcompiler.lib"