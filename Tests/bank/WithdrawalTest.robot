*** Settings ***
Documentation       Scope:Test Customer Withdrawal Functionality

Library     SeleniumLibrary
Library     Collections

Resource        ../../Resources/bank/CustomerPage.robot
Resource        ../../Resources/bank/LoginPage.robot
Resource        ../../Resources/bank/AccountPage.robot
Resource        ../../Resources/bank/DepositPage.robot
Resource        ../../Resources/bank/TransactionPage.robot
Resource        ../../Resources/bank/WithdrawalPage.robot
Resource        ../../Resources/resource.robot

Test Setup          LoginPage.Open browser and launch the application url
Test Teardown       resource.Close the browser window

*** Variables ***

${amount_to_be_withdrawn}       xpath://label[normalize-space()='Amount to be Withdrawn :']
${withdrawl_btn}                xpath://button[normalize-space()='Withdraw']

*** Test Cases ***
Test Customer Withdrawal Functionality
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
        DepositPage.Click on deposit menu
        DepositPage.Verify amount to be deposited label is displayed
        DepositPage.Enter the amount
        DepositPage.Click on deposit button
        DepositPage.Verify the confirmation message on transaction success
        DepositPage.Verify the balance amount is displayed in the balance value
        TransactionPage.click on withdraw menu
        WithdrawalPage.verify the label amount to be withdrawn is displayed
        WithdrawalPage.enter the withdrawal amount
        WithdrawalPage.click on withrawal button
        WithdrawalPage.navigate to transaction menu
        WithdrawalPage.validate the withdrawal amount and its transaction type
        WithdrawalPage.click on reset
        WithdrawalPage.verify there are no rows in the transaction table
        WithdrawalPage.click on back button
        CustomerPage.Logout from the application





