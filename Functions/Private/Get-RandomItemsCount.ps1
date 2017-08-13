function Get-RandomItemsCount
{
    <#
    .SYNOPSIS
        Gets a random item count.

    .DESCRIPTION
        Gets a random item count.

    .EXAMPLE
        Get-RandomItemsCount
    #>

    [CmdletBinding()]
    Param
    ()

    Process
    {
        # generate a random number and return it
        
        $randomCount = Get-Random -Minimum 1 -Maximum 8
        Write-Output $randomCount
    }
}