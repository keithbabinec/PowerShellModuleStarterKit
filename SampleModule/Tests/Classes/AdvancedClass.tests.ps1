Describe "Advanced class object tests" {
    Context "Class can be loaded" {
        It "Type definition can be loaded." {
            { 
                . .\Classes\AdvancedClass.ps1 
            } | Should Not Throw
        }
        It "Does not throw an error when instantiated" {
            { 
                . .\Classes\AdvancedClass.ps1
                $null = New-Object AdvancedClass
            } | Should Not Throw
        }
    }
}
