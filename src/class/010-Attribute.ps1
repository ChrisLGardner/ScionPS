class Attribute {

    [string]$Name

    [ValidateRange(1, 5)]
    [int]$Dots

    [Approach]$Approach

    [Arena]$Arena

    Attribute () {
    }

    Attribute ([Hashtable]$Attribute) {
        $this.Name = $Attribute['Name']
        $this.Dots = $Attribute['Dots']

        $this.SetApproach($Attribute)
        $this.SetArena($Attribute)
    }

    Attribute ([String]$Attribute, [int]$Dots) {
        $this.Name = $Attribute
        $this.Dots = $Dots

        $this.SetApproach($Attribute)
        $this.SetArena($Attribute)
    }

    [void] SetApproach ([string]$Attribute) {

        switch ($Attribute) {
            'Intellect' {
                [Approach]::Power
                Continue
            }
            'Cunning' {
                [Approach]::Finesse
                Continue
            }
            'Resolve' {
                [Approach]::Resistance
                Continue
            }
            'Might' {
                [Approach]::Power
                Continue
            }
            'Dexterity' {
                [Approach]::Finesse
                Continue
            }
            'Stamina' {
                [Approach]::Resistance
                Continue
            }
            'Presence' {
                [Approach]::Power
                Continue
            }
            'Manipulation' {
                [Approach]::Finesse
                Continue
            }
            'Composure' {
                [Approach]::Resistance
                Continue
            }
            Default {
                [Approach]::Power
            }
        }
    }

    [void] SetArena ([string]$Attribute) {

        switch ($Attribute) {
            'Intellect' {
                [Arena]::Mental
                Continue
            }
            'Cunning' {
                [Arena]::Mental
                Continue
            }
            'Resolve' {
                [Arena]::Mental
                Continue
            }
            'Might' {
                [Arena]::Physical
                Continue
            }
            'Dexterity' {
                [Arena]::Physical
                Continue
            }
            'Stamina' {
                [Arena]::Physical
                Continue
            }
            'Presence' {
                [Arena]::Social
                Continue
            }
            'Manipulation' {
                [Arena]::Social
                Continue
            }
            'Composure' {
                [Arena]::Social
                Continue
            }
            Default {
                [Arena]::Mental
            }
        }
    }
}
