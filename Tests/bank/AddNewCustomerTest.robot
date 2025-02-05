*** Settings ***
Documentation       Scope:Test Add New and Delete the newly created Customer Functionality

Resource        ../../Resources/resource.robot
Resource        ../../Resources/bank/CustomerPage.robot
Resource        ../../Resources/bank/LoginPage.robot
Resource        ../../Resources/bank/ManagerPage.robot

Test Setup          LoginPage.Open browser and launch the application url
Test Teardown       resource.Close the browser window

*** Test Cases ***
Test Add New and Delete the newly created Customer Functionality
        [Tags]    smoke
        resource.Maximize the browser window
        LoginPage.Verify the user is in the login page
        LoginPage.Verify there are 2 types of login present in this screen
        LoginPage.Print the page title
        LoginPage.Print the page current url
        LoginPage.Verify the display of bank name in the login screen
        LoginPage.Click on bank manager login
        ManagerPage.Verify if the page current url contains manager in it
        ManagerPage.Click on the add customer menu
        ManagerPage.Verify the presence of first name label
        ManagerPage.Enter first name value
        ManagerPage.Verify the presence of last name label
        ManagerPage.Enter last name value
        ManagerPage.Verify the presence of postal code label
        ManagerPage.Enter postal code value
        ManagerPage.click on add customer button
        ManagerPage.Verify the present of the alert and print the text and accept the alert
        ManagerPage.click on customer menu
        ManagerPage.verify the total rows in the cusomter list is more than 5
        ManagerPage.verify the table has the first name of the newly created customer
        ManagerPage.click on delete the newly created customer
        ManagerPage.verify the table doesn not have the first name of the newly created customer
        ManagerPage.Click on home menu
        LoginPage.Verify the user is in the login page





