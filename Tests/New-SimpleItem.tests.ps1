# load the module
Import-Module .\ScriptModule.psm1

# run tests
Describe "New-SimpleItem public function tests" {
    Context "Basic functionality" {
        It "Function can be loaded." {
            { 
                Get-Help New-SimpleItem -ErrorAction Stop
            } | Should Not Throw
        }
        It "Returns the correct type" {
            $item = New-SimpleItem -Name 'Cool' -Age 30
            $item -eq $null | Should Be $false
            $item.GetType().FullName | Should Be 'SimpleClass'
        }
        It "Name property is set correctly" {
            $item = New-SimpleItem -Name 'Cool' -Age 30
            $item.Name | Should Be 'Cool'
        }
        It "Age property is set correctly" {
            $item = New-SimpleItem -Name 'Cool' -Age 30
            $item.Age | Should Be 30
        }
    }
}