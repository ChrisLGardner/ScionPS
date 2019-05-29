Using Module ..\..\Output\ScionPS.psd1

InModuleScope ScionPS {
    Describe "Testing Attribute" {

        Context "SetApproach" {

            BeforeEach {
                $Sut = [Attribute]::New()
            }

            $TestCases = @(
                @{
                    Approach = 'Power'
                    Attribute = 'Intellect'
                }
                @{
                    Approach = 'Power'
                    Attribute = 'Might'
                }
                @{
                    Approach = 'Power'
                    Attribute = 'Presence'
                }
                @{
                    Approach = 'Finesse'
                    Attribute = 'Cunning'
                }
                @{
                    Approach = 'Finesse'
                    Attribute = 'Dexterity'
                }
                @{
                    Approach = 'Finesse'
                    Attribute = 'Manipulation'
                }
                @{
                    Approach = 'Resistance'
                    Attribute = 'Resolve'
                }
                @{
                    Approach = 'Resistance'
                    Attribute = 'Stamina'
                }
                @{
                    Approach = 'Resistance'
                    Attribute = 'Composure'
                }

            )

            It "Should set the approach to <Approach> when the supplied attribute is <Attribute>" {
                param (
                    $Approach,
                    $Attribute
                )

                $Sut.SetApproach($Attribute)

                $Sut.Approach | Should -Be $Approach
            } -TestCases $TestCases
        }

        Context "SetArena" {

            BeforeEach {
                $Sut = [Attribute]::New()
            }

            $TestCases = @(
                @{
                    Arena = 'Mental'
                    Attribute = 'Intellect'
                }
                @{
                    Arena = 'Physical'
                    Attribute = 'Might'
                }
                @{
                    Arena = 'Social'
                    Attribute = 'Presence'
                }
                @{
                    Arena = 'Mental'
                    Attribute = 'Cunning'
                }
                @{
                    Arena = 'Physical'
                    Attribute = 'Dexterity'
                }
                @{
                    Arena = 'Social'
                    Attribute = 'Manipulation'
                }
                @{
                    Arena = 'Mental'
                    Attribute = 'Resolve'
                }
                @{
                    Arena = 'Physical'
                    Attribute = 'Stamina'
                }
                @{
                    Arena = 'Social'
                    Attribute = 'Composure'
                }

            )

            It "Should set the Arena to <Arena> when the supplied attribute is <Attribute>" {
                param (
                    $Arena,
                    $Attribute
                )

                $Sut.SetArena($Attribute)

                $Sut.Arena | Should -Be $Arena
            } -TestCases $TestCases
        }

        Context "Dictionary Constructor" {

            $SourceData = Import-PowerShellDataFile -Path "$PSScriptRoot\TestData\Attributes\ArrayOfHashtableAttributes.psd1"

            $TestCases = @(
                @{
                    InputAttribute = $SourceData.Attributes[0]
                    Name = 'Intellect'
                    Dots = 2
                }
                @{
                    InputAttribute = $SourceData.Attributes[1]
                    Name = 'Cunning'
                    Dots = 4
                }
                @{
                    InputAttribute = $SourceData.Attributes[2]
                    Name = 'Resolve'
                    Dots = 2
                }
                @{
                    InputAttribute = $SourceData.Attributes[3]
                    Name = 'Might'
                    Dots = 5
                }
                @{
                    InputAttribute = $SourceData.Attributes[4]
                    Name = 'Dexterity'
                    Dots = 2
                }
                @{
                    InputAttribute = $SourceData.Attributes[5]
                    Name = 'Stamina'
                    Dots = 3
                }
                @{
                    InputAttribute = $SourceData.Attributes[6]
                    Name = 'Presence'
                    Dots = 2
                }
                @{
                    InputAttribute = $SourceData.Attributes[7]
                    Name = 'Manipulation'
                    Dots = 1
                }
                @{
                    InputAttribute = $SourceData.Attributes[8]
                    Name = 'Composure'
                    Dots = 4
                }
            )

            It "Should correctly set Values for Name and Dots to <Name> and <Dots> when passed Dictionary" {
                param (
                    $InputAttribute,
                    $Name,
                    $Dots
                )
                $Sut = [Attribute]::New($InputAttribute)

                $Sut.Name | Should -Be $Name
                $Sut.Dots | Should -Be $Dots
            } -TestCases $TestCases

        }

        Context "String/Int Constructor" {

        }


    }
}
