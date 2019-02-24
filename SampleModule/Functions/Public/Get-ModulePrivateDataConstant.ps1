function Get-ModulePrivateDataConstant
{
    <#
    .SYNOPSIS
        Returns a constant setting from the module private data.

    .DESCRIPTION
        Returns a constant setting from the module private data. If the setting is not found, null will be returned.

    .PARAMETER SettingName
        The name of the constant setting to return.

    .EXAMPLE
        PS C:\> Get-ModulePrivateDataSetting -SettingName 'example'
        Returns the module private data constant with key 'example'
    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory=$true)]
        [System.String]
        $SettingName
    )
    Process
    {
        # capture the constant to a variable for use
        $constant = $MyInvocation.MyCommand.Module.PrivateData.Constants[$SettingName]

        # write it to the output pipeline.
        Write-Output $constant
    }
} 