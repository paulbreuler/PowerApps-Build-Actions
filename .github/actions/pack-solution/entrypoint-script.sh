#!/bin/sh -l

alias nuget="mono /usr/local/bin/nuget.exe"

sourceNugetExe = "https://dist.nuget.org/win-x86-commandline/latest/nuget.exe"
targetNugetExe = ".\nuget.exe"
nuget install Microsoft.CrmSdk.CoreTools

echo  "Hello $1"
time=$(date)
echo ::set-output name=time::$time