setlocal EnableDelayedExpansion
set NL=^

rem TWO empty lines are required
set /p mod_name=What will the mod be named?:
set mod_name_ver=%mod_name%_0.0.1
ECHO %CD%\%mod_name_ver%


if not exist %CD%\%mod_name_ver% mkdir %CD%\%mod_name_ver%
@echo off
  (
  echo {
  echo  	"name": ^"%mod_name%^",
  echo  	"version": "0.0.1",
  echo  	"title": "",
  echo  	"author": "Alexa",
  echo  	"factorio_version": "0.16",
  echo  	"dependencies": ["base >= 0.16"],
  echo  	"description": ""
  echo }
  )>%CD%\%mod_name_ver%\info.json
  echo.>%CD%\%mod_name_ver%\data.lua
  if not exist %CD%\%mod_name_ver%\prototypes\ mkdir %CD%\%mod_name_ver%\prototypes\
  if not exist %CD%\%mod_name_ver%\locale\en mkdir %CD%\%mod_name_ver%\locale\en
  if not exist %CD%\%mod_name_ver%\graphics\icons mkdir %CD%\%mod_name_ver%\graphics\icons
  if not exist %CD%\%mod_name_ver%\ mkdir %CD%\%mod_name_ver%\
  echo.>%CD%\%mod_name_ver%\locale\en\base.cfg


  Mklink /D C:\Users\alexa\AppData\Roaming\Factorio\mods\!mod_name_ver! %CD%\!mod_name_ver!
pause
