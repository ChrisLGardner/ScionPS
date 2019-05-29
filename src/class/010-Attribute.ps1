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
                $this.Approach = [Approach]::Power
                Continue
            }
            'Cunning' {
                $this.Approach = [Approach]::Finesse
                Continue
            }
            'Resolve' {
                $this.Approach = [Approach]::Resistance
                Continue
            }
            'Might' {
                $this.Approach = [Approach]::Power
                Continue
            }
            'Dexterity' {
                $this.Approach = [Approach]::Finesse
                Continue
            }
            'Stamina' {
                $this.Approach = [Approach]::Resistance
                Continue
            }
            'Presence' {
                $this.Approach = [Approach]::Power
                Continue
            }
            'Manipulation' {
                $this.Approach = [Approach]::Finesse
                Continue
            }
            'Composure' {
                $this.Approach = [Approach]::Resistance
                Continue
            }
            Default {
                $this.Approach = [Approach]::Power
            }
        }
    }

    [void] SetArena ([string]$Attribute) {

        switch ($Attribute) {
            'Intellect' {
                $this.Arena = [Arena]::Mental
                Continue
            }
            'Cunning' {
                $this.Arena = [Arena]::Mental
                Continue
            }
            'Resolve' {
                $this.Arena = [Arena]::Mental
                Continue
            }
            'Might' {
                $this.Arena = [Arena]::Physical
                Continue
            }
            'Dexterity' {
                $this.Arena = [Arena]::Physical
                Continue
            }
            'Stamina' {
                $this.Arena = [Arena]::Physical
                Continue
            }
            'Presence' {
                $this.Arena = [Arena]::Social
                Continue
            }
            'Manipulation' {
                $this.Arena = [Arena]::Social
                Continue
            }
            'Composure' {
                $this.Arena = [Arena]::Social
                Continue
            }
            Default {
                $this.Arena = [Arena]::Mental
            }
        }
    }
}
