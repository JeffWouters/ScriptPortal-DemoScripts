param (
    [ValidateLength(2, 10)]
    [string]$FirstName = "Jeff",
    [string]$LastName,
    [ValidateRange(1, 150)]
    [int]$Age,
        [switch]$ShowHelp,
    [bool]$VerboseMode = $false,
    [ValidateCount(1, 1)]
    [ValidateSet("Amsterdam", "London", "Paris", "Barcelona", "Rome", "Berlin", "Lisabon")]
    [string]$BirthCity = "Amsterdam",
    [ValidateCount(1, 7)]
    [ValidateSet("Amsterdam", "London", "Paris", "Barcelona", "Rome", "Berlin", "Lisabon")]
    [array]$PreviousCity = "Amsterdam"
)

Write-Output "Hello, $FirstName $LastName!"

Write-Output "Basic Parameters Script Executed Successfully."