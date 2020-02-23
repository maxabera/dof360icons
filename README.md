# dof360icons
MS DOS batch. Creates UI icons for Autodesk Fusion360. Uses image-magick. 

Prequisities:
Image Magick must be installed to use this script.  https://imagemagick.org/ 
Bitmap image in PNG format of the icon is prepared. Image must have square dimensions of (almost) any size.

Usage:
Locate doicons.bat in the repository and copy it to the Autodesk Fusion 360 add-inn 'resource' folder.
Create folder with icon name. For example 'myicon'
Copy your icon image to the folder. Rename it to 'original.png'
Open command line window (cmd.exe)
Change to 'resource' directory.
Run the batch file with the name of the icon folder as a parameter. For example 'doicons.bat myicon'

Other resources
Autodesk Fusion Documetation
Programming Interface /Fusion 360 API User's Manual / User Interface / User-Interface Customization
https://help.autodesk.com/view/fusion360/ENU/?guid=GUID-F31C76F0-8C74-4343-904C-68FDA9BB8B4C

Programming Interface / Fusion 360 API Reference Manual
https://help.autodesk.com/view/fusion360/ENU/?guid=GUID-7B5A90C8-E94C-48DA-B16B-430729B734DC

