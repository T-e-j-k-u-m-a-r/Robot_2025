*** Settings ***
Documentation       Scope:Test Cusomter Deposit Functionality

Resource        ../../Resources/resource.robot
Resource        ../../Resources/bank/CustomerPage.robot
Resource        ../../Resources/bank/LoginPage.robot
Resource        ../../Resources/bank/AccountPage.robot
Resource        ../../Resources/bank/DepositPage.robot
Resource        ../../Resources/bank/TransactionPage.robot

Test Setup          LoginPage.Open browser and launch the application url     ${xyz_bank_url}         ${browser_name_headed}
Test Teardown       resource.Close the browser window

*** Test Cases ***
Test Cusomter Deposit Functionality
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
        DepositPage.Click on deposit menu
        DepositPage.Verify amount to be deposited label is displayed
        DepositPage.Enter the amount
        DepositPage.Click on deposit button
        DepositPage.Verify the confirmation message on transaction success
        DepositPage.Verify the balance amount is displayed in the balance value
        TransactionPage.Click on transaction menu
        TransactionPage.Verify if the entry of transaction row is present in this page
        TransactionPage.Verify the transaction amount value is same as the one deposited
        TransactionPage.Verify the transaction type is of type Credit
        TransactionPage.Click on reset button
        TransactionPage.Verify the entry row of the transaction is being removed
        CustomerPage.Logout from the application


