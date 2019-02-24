function New-SimpleItem
{
    <#
    .SYNOPSIS
        Creates a new simple item class object.

    .DESCRIPTION
        Creates a new simple item class object.

    .PARAMETER Name
        The name of the item.

    .PARAMETER Age
        The age of the item.

    .EXAMPLE
        PS C:\> New-SimpleItem -Name 'Test' -Age 42
        Returns a new simple item object.
    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory=$true)]
        [System.String]
        $Name,

        [Parameter(Mandatory=$true)]
        [System.Int32]
        $Age
    )
    Process
    {
        # make the new item and return it

        $item = New-Object SimpleClass
        $item.Name = $Name
        $item.Age = $Age

        Write-Output $item
    }
}