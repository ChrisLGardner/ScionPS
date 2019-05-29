class Character {

    [string]$Name

    [Skill[]]$Skills

    [Attribute[]]$Attributes

    [int]$Health

    [int]$MovementDice

    Character () {

    }
    Character ([System.Collections.Generic.IDictionary[String, Object]]$Character) {
        $this.Name = $Character.Name

    }
}
