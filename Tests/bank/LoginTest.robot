*** Settings ***
Documentation       Login test to XYZ bank with customer login

Resource        ../../Resources/resource.robot
Resource        ../../Resources/bank/CustomerPage.robot
Resource        ../../Resources/bank/LoginPage.robot
Resource        ../../Resources/bank/AccountPage.robot

Test Setup          LoginPage.Open browser and launch the application url     ${xyz_bank_url}         ${browser_name_headed}
Test Teardown       resource.Close the browser window

*** Test Cases ***
Test Login Functionality
        [Tags]    smoke
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




