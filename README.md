# Toolbox

This module includes utility defined types.
These are used throughout other modules made by Ken Maglio

However, these are very reusable and could be used by anyone.

* MKDIRS
  * Ensure All Directories Exist given a Full Path
  * Splits on "/" (configurable)
  * Windows / Linux Support
  * e.g. C:/Program Files/WinSW  will ensure Program Files, WinSW both exist (but not C:)
  * e.g. /opt/myapplication will ensure  opt, myapplication exist