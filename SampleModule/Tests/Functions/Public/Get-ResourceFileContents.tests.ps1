# load the module
Import-Module SampleModule -Force

# run tests
Describe "Get-ResourceFileContents public function tests" {
    Context "Basic functionality" {
        It "Function can be loaded." {
            { 
                Get-Help Get-ResourceFileContents -ErrorAction Stop
            } | Should Not Throw
        }
        It "Returns a json document" {
            $item = Get-ResourceFileContents
            $item | Should Not Be $null
            $item.GetType().FullName | Should Be 'System.String'
            $item.StartsWith("{") | Should Be $true
            $item.EndsWith("}") | Should Be $true
        }
    }
}