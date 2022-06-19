@echo off
set line=%1
if not x%line:print=%==x%line% (
set str=%line:print("=%
set str=%str:")=%
lib print %line%
)
if not x%line:input=%==x%line% (
lib input %line%
)