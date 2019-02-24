# load the module
Import-Module SampleModule -Force

# run tests
Describe "Invoke-ReferencedLibrary public function tests" {
    Context "Basic functionality" {
        It "Function can be loaded." {
            { 
                Get-Help Invoke-ReferencedLibrary -ErrorAction Stop
            } | Should Not Throw
        }
        It "Returns a json document" {
            $item = Invoke-ReferencedLibrary
            $item | Should Not Be $null
            $item.GetType().FullName | Should Be 'System.String'
            $item.StartsWith("{") | Should Be $true
            $item.EndsWith("}") | Should Be $true
        }
    }
}