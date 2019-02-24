# load the module
Import-Module SampleModule -Force

# run tests
Describe "New-AdvancedItem public function tests" {
    Context "Basic functionality" {
        It "Function can be loaded." {
            { 
                Get-Help New-AdvancedItem -ErrorAction Stop
            } | Should Not Throw
        }
        It "Returns the correct type" {
            $item = New-AdvancedItem -Name 'Cool'
            $item | Should Not Be $null
            $item.GetType().FullName | Should Be 'AdvancedClass'
        }
        It "Name property is set" {
            $item = New-AdvancedItem -Name 'Cool'
            $item.Name | Should Be 'Cool'
        }
        It "Enabled property is set" {
            $item = New-AdvancedItem -Name 'Cool'
            $item.Enabled | Should Be $true
        }
        It "Items collection is populated" {
            $item = New-AdvancedItem -Name 'Cool'
            $item.Items | Should Not Be $null
            $item.Items.Count | Should BeGreaterThan 0
        }
    }
}