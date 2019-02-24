function Invoke-ReferencedLibrary
{
    <#
    .SYNOPSIS
        Invokes the external library referenced by the module manifest.

    .DESCRIPTION
        Invokes the external library referenced by the module manifest. The referenced library is Newtonsoft.JSON. 
        The test will serialize an object to JSON and return the contents.

    .EXAMPLE
        PS C:\> Test-ReferencedLibrary
        Tests the referenced library by serializing an object and returning the contents.
    #>
    [CmdletBinding()]
    Param
    (
    )
    Process
    {
        # the purpose of this function is to use the library that was referenced in the module manifest.
        # the library is Newtonsoft.JSON, which is used for serializing and deserializing JSON data.
        # in this example we just make a new class object and serialize it.

        # NOTE: the library doesn't need to be loaded here with Add-Type, since it is already loaded automatically when the module was imported.

        $item = New-AdvancedItem -Name 'Test'

        $itemAsJson = [Newtonsoft.Json.JsonConvert]::SerializeObject($item);

        Write-Output $itemAsJson
    }
}