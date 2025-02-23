*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../../Resources/WEH/IframesPage.robot

Test Setup          IframesPage.Open the browser and navigate to the application
Test Teardown       Close Browser


*** Test Cases ***
TC: Handling Iframes in UI
    IframesPage.Maximize the browser window
    IframesPage.Select frame left and verify if the frame contain LEFT in it or not and then unselect it
    IframesPage.Select frame middle and verify if the frame contain MIDDLE in it or not and then unselect it
    IframesPage.Select frame right and verify if the frame contain RIGHT in it or not and then unselect it
    IframesPage.Select frame bottom and verify if the frame contain BOTTOM in it or not and then unselect it



