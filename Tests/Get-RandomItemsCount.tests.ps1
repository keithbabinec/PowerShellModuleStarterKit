# load the module
Import-Module .\ScriptModule.psm1

# run tests
Describe "Get-RandomItemsCount private function tests" {
    Context "Basic functionality" {
        It "Function can be loaded." {
            { 
                Get-Help Get-RandomItemsCount -ErrorAction Stop
            } | Should Not Throw
        }
        It "Returns a single integer output" {
            $count = Get-RandomItemsCount
            $count -eq $null | Should Be $False
            $count.GetType().FullName | Should Be 'System.Int32'
        }
    }
}