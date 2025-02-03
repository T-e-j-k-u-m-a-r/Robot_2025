*** Settings ***

Library     SeleniumLibrary

Resource  ../../Resources/LoginPage.robot
Resource  ../../Resources/HomePage.robot
Resource  ../../Resources/generic.robot

Test Setup      Open browser and navigate to application url with headed mode
Test Teardown   Close browser window

*** Test Cases ***
Login test with valid credentials
    LoginPage.Maximize the browser window
    LoginPage.Verify the user is in login page
    LoginPage.Enter user name
    LoginPage.Enter password
    LoginPage.Click on login page
    HomePage.Verify the login is success
    HomePage.Logout from the application
    LoginPage.Verify the user is in login page

*** Keywords ***
