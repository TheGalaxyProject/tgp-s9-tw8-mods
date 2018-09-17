# SystemUI.apk

## Pre-Decompiling Patching Notes:

- Followed a.raul's guide to create a Pre-modified APK before starting 


## Patching Notes:

- Rename pip_dismiss_scrim.9.png to pip_dismiss_scrim.png
- Built resources with APKTool, and signed APK after building
- Modified smali with baksmali
- Drag the resources.ascr file into the original APK using Store Compression 
- Drag classes, classes2.dex, and the res folder into the original APK using Best Compression
                                                              

Modifications

- Removed Safe Volume Warning
- Disable High Level Brightness Popup
- Allow Fingerprint Unlock after Reboot
- Screen Recorder Tile

Reference URLs:

- https://forum.xda-developers.com/showpost.php?p=76259485&postcount=39
- https://forum.xda-developers.com/showpost.php?p=76093180&postcount=5
- https://forum.xda-developers.com/showpost.php?p=76452776&postcount=108
- https://forum.xda-developers.com/showpost.php?p=77035733&postcount=341
- https://forum.xda-developers.com/showpost.php?p=77608911&postcount=597
