function Get-ModuleCacheItems
{
    <#
    .SYNOPSIS
        Returns some items from the writable module cache.

    .DESCRIPTION
        Returns some items from the writable module cache. If no items are in the cache, then nothing will be returned.

    .EXAMPLE
        PS C:\> Get-ModuleCacheItems
        Returns the items saved in the cache, if they are found.
    #>
    [CmdletBinding()]
    Param
    (
    )
    Process
    {
        # example: read the first cache object, return it to the pipeline.
        Write-Output $MyInvocation.MyCommand.Module.PrivateData.Cache['Example1Key']

        # example: read the second cache object, return it to the pipeline.
        Write-Output $MyInvocation.MyCommand.Module.PrivateData.Cache['Example2Key']
    }
}