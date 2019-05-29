function Invoke-DiceRoll {
    [cmdletbinding()]
    param (
        [Parameter(ValueFromPipelineByPropertyName, ValueFromPipeline)]
        [int]$NumberOfDice,

        [parameter(ParameterSetName = '9Again')]
        [switch]$NineAgain,

        [parameter(ParameterSetName = '9Again')]
        [switch]$EightAgain
    )

    $Result = 1..$NumberOfDice | ForEach-Object { Get-Random -Minimum 1 -Maximum 10 }

    $reroll = 10

    $RerollSplat = @{
        'NineAgain' = $false
        'EightAgain' = $false
    }

    if ($PSCmdlet.ParameterSetName -eq '9Again') {
        $Reroll = 9
        $RerollSplat['NineAgain'] = $true
    }
    elseif ($PSCmdlet.ParameterSetName -eq '8Again') {
        $Reroll = 8
        $RerollSplat['EightAgain'] = $true
    }

    if ($Result.Where{ $_ -ge $reroll }) {
        $Result += Invoke-DiceRoll -NumberOfDice $Result.Where({ $_ -ge $reroll }).count @RerollSplat
    }

    Write-Verbose -Message "Rolled $($Result -join ',')"
    @($Result.Where({ $_ -ge 8 })).count
}

Set-Alias -Name roll -Value Invoke-DiceRoll
