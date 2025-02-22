*** Settings ***
Library         SeleniumLibrary
Library         Collections
Library         String
Resource        ../../Resources/WEH/WindowPage.robot

Test Setup          WindowPage.Open browser and navigate to windows page
Test Teardown       Close Browser

*** Test Cases ***
TC04: Handling windows
    [documentation]  This test case demonstrates the handling of window or tabs
    [tags]           regression
    WindowPage.Maximize the browser window size
    WindowPage.Handle new tabbed window
    WindowPage.Handle new separate window

