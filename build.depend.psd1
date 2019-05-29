@{
    PSDependOptions = @{
        Target = '.\Dependency'
        AddToPath = $true
    }
    Configuration = 'Latest'
    Pester = @{
        Name = 'Pester'
        Parameters = @{
            SkipPublisherCheck = $true
        }
    }
    PlatyPS = 'Latest'
    PSScriptAnalyzer = 'Latest'
}
