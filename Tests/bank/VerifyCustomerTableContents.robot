*** Settings ***
Documentation       Scope:Test Customer Table Contents Functionality

Resource        ../../Resources/resource.robot
Resource        ../../Resources/bank/CustomerPage.robot
Resource        ../../Resources/bank/LoginPage.robot
Resource        ../../Resources/bank/ManagerPage.robot

Test Setup          LoginPage.Open browser and launch the application url
Test Teardown       resource.Close the browser window

*** Test Cases ***
Test Customer Table Contents Functionality
        [Tags]    regression
        resource.Maximize the browser window
        LoginPage.Verify the user is in the login page
        LoginPage.Verify there are 2 types of login present in this screen
        LoginPage.Print the page title
        LoginPage.Print the page current url
        LoginPage.Verify the display of bank name in the login screen
        LoginPage.Click on bank manager login
        ManagerPage.click on customer menu
        ManagerPage.verify the total rows in the cusomter list is more than 5
        ManagerPage.search for an existing customer from the list
        ManagerPage.verify the search results table row is 1
        ManagerPage.verify the First name in the row 2 column 1 is same as the one entered in the search
        ManagerPage.clear the search text input box

        ManagerPage.print total number of rows
        ManagerPage.print total number of columns
        ManagerPage.print all header values
        ManagerPage.print total cells in the table

        ManagerPage.Click on home menu
        LoginPage.Verify the user is in the login page





