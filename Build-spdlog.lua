project "spdlog"
    kind "StaticLib"
    language "C++"
    cppdialect "C++20"
    staticruntime "On"

    targetdir ("%{wks.location}/Binaries/" .. OutputDir .. "/%{prj.name}")
    objdir ("%{wks.location}/Binaries/Intermediates/" .. OutputDir .. "/%{prj.name}")

    files
    {
        "include/**.h",
        "include/**.cpp",
        "src/**.cpp"
    }

    includedirs
    {
        "include"
    }

    filter "system:windows"
        systemversion "latest"
        buildoptions { "/Zc:__cplusplus", "/utf-8" }

        defines
        {
            "SPDLOG_COMPILED_LIB"
        }
