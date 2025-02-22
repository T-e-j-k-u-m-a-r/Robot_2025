*** Settings ***
Library         SeleniumLibrary
Library         Collections
Library         String
Resource        ../../Resources/WEH/WebtablePage.robot

Test Setup      WebtablePage.Open the browser and launch the app
Test Teardown   Close Browser

*** Variables ***


*** Test Cases ***
TC01:Handling Web Tables
    [documentation]  This test case demonstrates the handling of web tables
    [tags]           smoke
    WebtablePage.Maximize the browser window
    WebtablePage.Print the table name
    WebtablePage.Print the total rows
    WebtablePage.Print the total columns
    Print the value of 2nd row 2nd column in the table



