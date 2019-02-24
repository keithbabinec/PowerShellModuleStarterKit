function New-AdvancedItem
{
    <#
    .SYNOPSIS
        Creates a new advanced item class object.

    .DESCRIPTION
        Creates a new advanced item class object.

    .PARAMETER Name
        The name of the item.

    .EXAMPLE
        PS C:\> New-AdvancedItem -Name 'Test'
        Returns a new advanced item object.
    #>
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory=$true)]
        [System.String]
        $Name
    )
    Process
    {
        # make the new item and return it

        $item = New-Object AdvancedClass($Name)
        $item.Enabled = $true

        $itemCount = Get-RandomItemsCount

        for ([int]$i = 1; $i -le $itemCount; $i++)
        {
            $item.Items.Add("item $i")
        }

        Write-Output $item
    }
}