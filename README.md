# PowerShellModuleStarterKit
A starter kit for new PowerShell script modules.

This repository demonstrates how to organize a module and accomplish a few common tasks like public vs private functions, unit tests, working with classes, and more. 

Tip: For a starter that contains Azure DevOps CI pipeline support, check out [PowerShellCiPipelineStarterKit](https://github.com/keithbabinec/PowerShellCiPipelineStarterKit).

## Features
* Public and private functions.
* Unit testing with the Pester framework.
* PowerShell v5 classes (accessible inside and outside the module scope).
* Module private data (for constants and caching).
* Referencing static resource files.
* Referencing external libraries.

## Setup
1. Clone the repository to your local computer.
2. Open PowerShell (as an administrator).
3. Install the [Pester](https://github.com/pester/Pester) framework:
``` powershell
Install-Module -Name Pester -MinimumVersion 4.10.1 -Scope AllUsers -Force -SkipPublisherCheck
```
4. Add this starter kit module to the PSModule path.
***Note: This assumes you have cloned the repository to C:\Source. Update the path if this isn't correct.***
``` powershell
$repoDirectory = 'C:\Source\PowerShellModuleStarterKit'
$existingPaths = $ENV:PSModulePath
$newPaths = "$repoDirectory;$existingPaths"
$scope = [System.EnvironmentVariableTarget]::Machine
[System.Environment]::SetEnvironmentVariable('PSModulePath',$newPaths,$scope)
```

## Load the module
``` powershell
Import-Module -Name SampleModule
```

## Run the unit tests
***Note: This assumes you have cloned the repository to C:\Source. Update the path if this isn't correct.***
``` powershell
cd 'C:\Source\PowerShellModuleStarterKit\SampleModule'
Invoke-Pester
```
