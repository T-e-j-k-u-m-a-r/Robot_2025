*** Settings ***

Library                        SeleniumLibrary

*** Variables ***
${app_url}                     https://www.globalsqa.com/angularJs-protractor/BankingProject/#/login
${browser_name_headed}         Chrome
${browser_name_headless}       headlesschrome
${xyz_bank_url}                https://www.globalsqa.com/angularJs-protractor/BankingProject/#/login

*** Keywords ***
Maximize the browser window
    Maximize Browser Window

Close the browser window
    Close Browser


