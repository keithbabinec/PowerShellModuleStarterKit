# load the module
Import-Module SampleModule -Force

# run tests
# note: the Get-RandomItemsCount function is private (non-exported).
# in order for Pester to test this function, use the 'InModuleScope' wrapper around the test.

InModuleScope SampleModule {
    Describe "Get-RandomItemsCount private function tests" {
        Context "Basic functionality" {
            It "Function can be loaded." {
                { 
                    Get-Help Get-RandomItemsCount -ErrorAction Stop
                } | Should Not Throw
            }
            It "Returns a single integer output" {
                $count = Get-RandomItemsCount
                $count | Should Not Be $null
                $count.GetType().FullName | Should Be 'System.Int32'
            }
        }
    }
}