<# This script builds libiconv #>
Param(
	[string]$arch,
	[int]$vsver,
	[switch]$dll,
	[switch]$debug
)

$ErrorActionPreference = "Stop"
Import-Module Pscx

$x64Dir = If($arch -eq "x64") { "\x64" } Else { "" }
$distname = If($arch -eq "x64") { "win64" } Else { "win32" }
If($vsver -eq 90) { $distname = "vs2008.$distname" }
$vcvarsarch = If($arch -eq "x64") { "amd64" } Else { "x86" }

Set-Location $PSScriptRoot

Import-VisualStudioVars -VisualStudioVersion $vsver -Architecture $vcvarsarch

Set-Location (".\MSVC" + [string]($vsver / 10))

if($dll){
	$suffix="dll"
	$distname+=".dll"
} else {
	$suffix="static"
	$distname+=".static"
}

if($debug){
	$Configuration="Debug"
	$distname+=".debug"
} else {
	$Configuration="Release"
	$distname+=".release"
}

if($vsver -eq 90) {
    $vcarch = If($arch -eq "x64") { "x64" } Else {"Win32"}
    vcbuild libiconv_static\libiconv_static.vcproj "Release|$vcarch"
} else {
	msbuild libiconv.sln /p:Configuration=$Configuration /t:"libiconv_$suffix"
}
$iconvLib = Join-Path (pwd) "libiconv_${suffix}${x64Dir}\$Configuration"
$iconvInc = Join-Path (pwd) ..\source\include
Set-Location ..

# Pushed by Import-VisualStudioVars
Pop-EnvironmentBlock
