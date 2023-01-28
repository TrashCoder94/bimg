project "bimg"
	kind "StaticLib"
	staticruntime "on"
	language "C++"
	cppdialect "C++14"
	exceptionhandling "Off"
	rtti "Off"
	
	targetdir ("%{wks.location}/Binaries/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/Intermediate/" .. outputdir .. "/%{prj.name}")
	
	files
	{
		"include/bimg/*.h",
		"src/image.cpp",
		"src/image_gnf.cpp",
		"src/*.h",
		"3rdparty/astc-codec/src/decoder/*.cc"
	}
	includedirs
	{
		"%{IncludeDir.bx}",
		"%{IncludeDir.bimg}",
		"%{IncludeDir.bimg3rdPartyAstcCodec}",
		"%{IncludeDir.bimg3rdPartyAstcCodecInclude}"
	}
	setBxCompat()