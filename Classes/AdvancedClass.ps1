<#
A v5 class example using instance/static methods and constructors.
#>
class AdvancedClass
{
    # properties 

    [String] $Name
    [Bool] $Enabled
    [System.Collections.Generic.List[String]] $Items

    # instance methods

    [Void] SetName([String] $name)
    {
        $this.Name = $name
    }

    [String] GetName([String] $name)
    {
        return $this.Name
    }

    # static methods

    static [String] GetDateString()
    {
        return [DateTime]::Now.ToString()
    }

    # constructors
    
    AdvancedClass()
    {
        $this.Items = New-Object System.Collections.Generic.List[String]
    }

    AdvancedClass([String] $name)
    {
        if ($name -eq $null)
        {
            throw "Name must be provided"
        }

        $this.Items = New-Object System.Collections.Generic.List[String]
        $this.Name = $name
    }
}