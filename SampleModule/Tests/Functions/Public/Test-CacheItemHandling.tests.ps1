# load the module
Import-Module SampleModule -Force

# run tests
Describe "Module cache functionality tests" {
    Context "Basic functionality" {
        It "The cache is empty before we have written to it" {
            $output = Get-ModuleCacheItems
            
            $output.Count | Should Be 2
            
            $output[0] | Should Be $null
            $output[1] | Should Be $null
        }
        It "The cache write function can be invoked" {
            { Set-ModuleCacheItems } | Should Not Throw
        }
        It "The cache is populated after write was called" {
            $output = Get-ModuleCacheItems

            $output.Count | Should Be 2
            
            $output[0] | Should Not Be $null
            $output[0] | Should Be 'example1Value'
            
            $output[1] | Should Not Be $null
            $output[1].GetType().FullName | Should Be 'AdvancedClass'
            $output[1].Name | Should Be 'Test'
        }
    }
}