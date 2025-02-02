*** Settings ***

Library     SeleniumLibrary
Resource  ../Resources/loginpage.robot
Resource  ../Resources/homepage.robot
Resource  ../Resources/generic.robot

*** Test Cases ***
Login test with valid credentials
    Open browser and navigate to application url with headed mode
    Maximize the browser window
    Verify the user is in login page
    Enter user name
    Enter password
    Click on login page
    Verify the login is success
    Logout from the application
    Verify the user is in login page
    Close browser window

*** Keywords ***
