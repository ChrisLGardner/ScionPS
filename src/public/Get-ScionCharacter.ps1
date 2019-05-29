function Get-ScionCharacter {
    [cmdletbinding()]
    param (
        [parameter(Mandatory)]
        [alias('CharacterName')]
        [string]$Name
    )
}
