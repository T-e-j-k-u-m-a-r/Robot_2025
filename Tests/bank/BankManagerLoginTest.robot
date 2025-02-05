*** Settings ***
Documentation       Scope:Test Bank Manager Login Functionality

Resource        ../../Resources/resource.robot
Resource        ../../Resources/bank/CustomerPage.robot
Resource        ../../Resources/bank/LoginPage.robot
Resource        ../../Resources/bank/ManagerPage.robot

Test Setup          LoginPage.Open browser and launch the application url
Test Teardown       resource.Close the browser window

*** Test Cases ***
Test Bank Manager Login Functionality
        [Tags]    smoke
        resource.Maximize the browser window
        LoginPage.Verify the user is in the login page
        LoginPage.Verify there are 2 types of login present in this screen
        LoginPage.Print the page title
        LoginPage.Print the page current url
        LoginPage.Verify the display of bank name in the login screen
        LoginPage.Click on bank manager login
        ManagerPage.Verify if the page current url contains manager in it
        ManagerPage.Verify the home page of bank manager contains add customer menu
        ManagerPage.Verify the home page of bank manager contains open account menu
        ManagerPage.Verify the home page of bank manager contains customers menu
        ManagerPage.Click on home menu
        LoginPage.Verify the user is in the login page





