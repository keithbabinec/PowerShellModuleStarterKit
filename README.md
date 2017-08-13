# PowerShellModuleStarterKit
A starter kit for new PowerShell script modules including unit tests.

Contains a basic .psd1 (manifest) and .psm1 (root module), class examples, function examples, and unit tests.

### Prerequisites

In order to run the unit tests, you need the Pester test framework (https://github.com/pester/Pester).

Once Pester is installed and in your PSModule path, run the Invoke-Pester cmdlet (no args) from the root of the repository. It will find and run the tests for you.

### Notes

This module can be loaded by calling Import-Module on either the module manifest (.psd1), or the root module (.psm1) file.

For the sake of easy unit testing, the .psm1 file is referenced for test imports. This is because the private functions and (non-exportable classes) are easily found and loaded.
