*** Settings ***
Library         SeleniumLibrary
Library         Collections
Library         String
Resource        ../../Resources/WEH/FramesPage.robot

Test Setup          FramesPage.Open browser and navigate to windows page
Test Teardown       Close Browser

*** Test Cases ***
TC05: Handling Iframes
    [documentation]  This test case demonstrates the handling of IFrames
    [tags]           regression
    Maximize the browser window size
    Handling Single Iframe
    Handling Iframe with in an Iframe