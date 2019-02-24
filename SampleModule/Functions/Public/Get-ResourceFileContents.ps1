function Get-ResourceFileContents
{
    <#
    .SYNOPSIS
        Returns the contents of a sample resource file packaged with the module.

    .DESCRIPTION
        Returns the contents of a sample resource file packaged with the module.

    .EXAMPLE
        PS C:\> Get-ResourceFileContents
        Returns the contents of the sample resource file.
    #>
    [CmdletBinding()]
    Param
    (
    )
    Process
    {
        $moduleRoot = $MyInvocation.MyCommand.Module.ModuleBase
        $filePath = Join-Path -Path $moduleRoot -ChildPath "Resources\Templates\TemplateResource.json"
        $fileContents = Get-Content -Path $filePath -Raw
        
        Write-Output $fileContents
    }
} 