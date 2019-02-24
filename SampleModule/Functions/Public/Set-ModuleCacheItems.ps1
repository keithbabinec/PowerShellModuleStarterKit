function Set-ModuleCacheItems
{
    <#
    .SYNOPSIS
        Saves some items to the writable module cache.

    .DESCRIPTION
        Saves some items to the writable module cache.

    .EXAMPLE
        PS C:\> Set-ModuleCacheItems
        Saves a simple type and a complex type to the cache.
    #>
    [CmdletBinding()]
    Param
    (
    )
    Process
    {
        # example: write to the cache, save a primitive type like string, or int.
        $MyInvocation.MyCommand.Module.PrivateData.Cache['Example1Key'] = 'example1Value'

        # example: write to the cache, save a complex type like a class object.
        $advancedType = New-AdvancedItem -Name 'Test'
        $MyInvocation.MyCommand.Module.PrivateData.Cache['Example2Key'] = $advancedType
    }
}