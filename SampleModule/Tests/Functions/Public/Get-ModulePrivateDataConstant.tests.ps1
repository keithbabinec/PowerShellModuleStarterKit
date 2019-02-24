# load the module
Import-Module SampleModule -Force

# run tests
Describe "Get-ModulePrivateDataConstant public function tests" {
    Context "Basic functionality" {
        It "Function can be loaded." {
            { 
                Get-Help Get-ModulePrivateDataConstant -ErrorAction Stop
            } | Should Not Throw
        }
        It "Returns null for a non-existent module constant" {
            $item = Get-ModulePrivateDataConstant -SettingName 'Not a real constant'
            $item | Should Be $null
        }
        It "Returns the correct value for the string sample constant" {
            $item = Get-ModulePrivateDataConstant -SettingName 'ExampleStringConst'
            $item | Should Not Be $null
            $item.GetType().FullName | Should Be 'System.String'
        }
        It "Returns the correct value for the int sample constant" {
            $item = Get-ModulePrivateDataConstant -SettingName 'ExampleIntConst'
            $item | Should Not Be $null
            $item.GetType().FullName | Should Be 'System.Int32'
        }
    }
}