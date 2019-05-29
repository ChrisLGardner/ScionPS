class Skill {

    [SkillName]$Name

    [ValidateRange(0, 5)]
    [int]$Dots

    [string[]]$Specialisation

    [boolean]$PathSkill
}
