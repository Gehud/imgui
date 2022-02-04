project "IMGUI"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	systemversion "latest"
	staticruntime "On"

	targetdir ("bin/" .. output_dir .. "/%{prj.name}")
	objdir ("bin/intermediate/" .. output_dir .. "/%{prj.name}")

	files {
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp",
        "imgui_tables.cpp"
	}

	filter "system:linux"
		pic "On"

	filter "configurations:Debug"
		runtime "Debug"

	filter "configurations:Release"
		runtime "Release"
