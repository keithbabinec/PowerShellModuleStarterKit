function Get-RandomItemsCount
{
    <#
    .SYNOPSIS
        Gets a random item count.

    .DESCRIPTION
        Gets a random item count, between the numbers 1 and 8.

    .EXAMPLE
        PS C:\> Get-RandomItemsCount
        Returns a random items count.
    #>
    [CmdletBinding()]
    Param
    (
    )
    Process
    {
        # generate a random number and return it
        
        $randomCount = Get-Random -Minimum 1 -Maximum 8
        Write-Output $randomCount
    }
}