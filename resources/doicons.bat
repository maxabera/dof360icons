:: creates icon all sizes and formats requred by Autodesk Fusion 360 for user interface
:: expects file with a name original.png
:: original.png will be converted to required files
:: updated 2019 07 26 16:41

ECHO OFF
SETLOCAL EnableDelayedExpansion

SET "projects_dir=D:\OneDrive\works"
SET "module_dir=D:\OneDrive\GitHub\Subface4"
SET nodesdir=nodes


SET MAGICK_EXE=magick
IF [%1]==[] ECHO Usage: doicons [icon_folder]

SET "icon_folder=%1"

SET "ORIGINAL_PNG=%icon_folder%\original.png"
SET "ICON64x64=%icon_folder%\32x32@2x.png"
SET "ICON16x16=%icon_folder%\16x16.png"
SET "ICON16x16x2=%icon_folder%\16x16@2x.png"
SET "ICON32x32=%icon_folder%\32x32.png"

SET "ICON64x64DIS=%icon_folder%\32x32@2x-disabled.png"
SET "ICON16x16DIS=%icon_folder%\16x16-disabled.png"
SET "ICON16x16x2DIS=%icon_folder%\16x16@2x-disabled.png"
SET "ICON32x32DIS=%icon_folder%\32x32-disabled.png"

SET "ICON64x64DARK=%icon_folder%\32x32@2x-dark.png"
SET "ICON16x16DARK=%icon_folder%\16x16-dark.png"
SET "ICON16x16x2DARK=%icon_folder%\16x16@2x-dark.png"
SET "ICON32x32DARK=%icon_folder%\32x32-dark.png"


SET "DIS=disabled"
SET T_COLOR="#F2EFE4"
SET "TRANSPARENT=-transparent %T_COLOR%"
SET "GRAYSCALE=-colorspace Gray"

SET "BRIGHTNESS=-brightness-contrast 50x20"

echo %ICON16x16%
%MAGICK_EXE%  %ORIGINAL_PNG% -resize "16x16" %TRANSPARENT% %ICON16x16%

echo %ICON32x32%
%MAGICK_EXE%  %ORIGINAL_PNG% -resize "32x32" %TRANSPARENT% %ICON32x32%

echo %ICON16x16x2%
%MAGICK_EXE%  %ORIGINAL_PNG% -resize "32x32" %TRANSPARENT% %ICON16x16x2%

echo %ICON64x64%
%MAGICK_EXE%  %ORIGINAL_PNG% -resize "64x64" %TRANSPARENT% %ICON64x64%



echo %ICON16x16DIS%
%MAGICK_EXE%  %ORIGINAL_PNG% -resize "16x16"  %GRAYSCALE% %ICON16x16DIS%

echo %ICON32x32DIS%
%MAGICK_EXE%  %ORIGINAL_PNG% -resize "32x32"  %GRAYSCALE% %ICON32x32DIS%

echo %ICON16x16x2DIS%
%MAGICK_EXE%  %ORIGINAL_PNG% -resize "32x32"  %GRAYSCALE% %ICON16x16x2DIS%

echo %ICON64x64DIS%
%MAGICK_EXE%  %ORIGINAL_PNG% -resize "64x64"  %GRAYSCALE% %ICON64x64DIS%



echo %ICON16x16DARK%
%MAGICK_EXE%  %ORIGINAL_PNG% -resize "16x16"  %BRIGHTNESS% %ICON16x16DARK%

echo %ICON32x32DARK%
%MAGICK_EXE%  %ORIGINAL_PNG% -resize "32x32"  %BRIGHTNESS% %ICON32x32DARK%

echo %ICON16x16x2DARK%
%MAGICK_EXE%  %ORIGINAL_PNG% -resize "32x32"  %BRIGHTNESS% %ICON16x16x2DARK%

echo %ICON64x64DARK%
%MAGICK_EXE%  %ORIGINAL_PNG% -resize "64x64"  %BRIGHTNESS% %ICON64x64DARK%