# Note: classes are not exported from a module
# Easy to test by loading the class file directly

Describe "SimpleClass object tests" {
    Context "Class can be loaded" {
        It "Type definition can be loaded." {
            { 
                . .\Classes\SimpleClass.ps1
            } | Should Not Throw
        }
        It "Does not throw an error when instantiated" {
            { 
                . .\Classes\SimpleClass.ps1
                $null = New-Object SimpleClass
            } | Should Not Throw
        }
    }
}
