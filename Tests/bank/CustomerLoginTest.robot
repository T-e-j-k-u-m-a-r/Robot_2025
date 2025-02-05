*** Settings ***
Documentation       Scope:Test Customer Login Functionality

Resource        ../../Resources/resource.robot
Resource        ../../Resources/bank/CustomerPage.robot
Resource        ../../Resources/bank/LoginPage.robot

Test Setup          LoginPage.Open browser and launch the application url
Test Teardown       resource.Close the browser window

*** Test Cases ***
Test Customer Login Functionality
        [Tags]    smoke     ui
        resource.Maximize the browser window
        LoginPage.Verify the user is in the login page
        LoginPage.Verify there are 2 types of login present in this screen
        LoginPage.Print the page title
        LoginPage.Print the page current url
        LoginPage.Verify the display of bank name in the login screen
        LoginPage.Click on Customer Login menu
        LoginPage.Select the customer from the dropdown and click on login button
        CustomerPage.Verify the login is success
        CustomerPage.Logout from the application
        LoginPage.Verify the user is in the login page




