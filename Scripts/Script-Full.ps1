<#
.SYNOPSIS
Creates or processes a person record using basic demographic information.

.DESCRIPTION
This script accepts personal details such as first name, last name, age, and city.
It validates input types and restricts the city parameter to a predefined list
of supported cities.

The script is intended as a template or utility for demonstrations, onboarding,
or data processing scenarios.

.PARAMETER FirstName
The first name of the person.

This parameter is required and must be a non-empty string.

.PARAMETER LastName
The last name of the person.

This parameter is required and must be a non-empty string.

.PARAMETER Age
The age of the person.

This parameter must be an integer greater than or equal to 0.

.PARAMETER City
The city associated with the person.

Valid values are:
- Amsterdam
- London
- Paris
- Barcelona
- Rome
- Berlin
- Lisabon

.PARAMETER City
Specifies the city where the person is located. Only a predefined set of cities
is allowed to ensure consistent data input.

.EXAMPLE
.\Person.ps1 -FirstName John -LastName Doe -Age 30 -City Amsterdam

Creates a person record for John Doe, aged 30, located in Amsterdam.

.EXAMPLE
.\Person.ps1 -FirstName Maria -LastName Rossi -Age 42 -City Rome

Creates a person record for Maria Rossi, aged 42, located in Rome.

.EXAMPLE
Get-Help .\Person.ps1 -Full

Displays the full help documentation for this script.

.NOTES
Author: Your Name
Version: 1.0.0
Date: 2026-02-01

This script uses PowerShell comment-based help and supports standard
Get-Help functionality.

.LINK
https://learn.microsoft.com/powershell/scripting/developer/help/comment-based-help
#>

[CmdletBinding()]
param (
    [Parameter(Mandatory = $true)]
    [ValidateNotNullOrEmpty()]
    [ValidateLength(1, 10)]
    [string]$FirstName,

    [Parameter(Mandatory = $false)]
    [ValidateNotNullOrEmpty()]
    [string]$LastName = "Wouters",

    [Parameter(Mandatory = $true)]
    [ValidateRange(0, [int]::MaxValue)]
    [int]$Age,

    [Parameter(Mandatory = $true)]
    [ValidateSet(
        "Amsterdam",
        "London",
        "Paris",
        "Barcelona",
        "Rome",
        "Berlin",
        "Lisabon"
    )]
    [string]$City
)

# Script logic goes here
Write-Output "Name: $FirstName $LastName"
Write-Output "Age: $Age"
Write-Output "City: $City"
