*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../../Resources/WEH/HoverPage.robot

Test Setup          HoverPage.Open browser and launch the hover application
Test Teardown       Close Browser

*** Test Cases ***
TC08: Hover Operation in UI
    [documentation]  This test case demonstrates hover operation
    [tags]           smoke
    HoverPage.Maximize window
    HoverPage.Perform hover on first element and verify its content being displayed