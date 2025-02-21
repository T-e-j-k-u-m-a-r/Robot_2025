*** Settings ***
Library         SeleniumLibrary
Library         Collections
Library         String
Resource        ../../Resources/WEH/AlertsPage.robot

Test Setup      AlertsPage.Open browser and navigate to application
Test Teardown   Close Browser

*** Test Cases ***
TC03:Handling Alerts
    AlertsPage.Maximize the browser window
    AlertsPage.Handle Alert type 1
    AlertsPage.Handle Alert type 2
    AlertsPage.Handle Alert type 3


