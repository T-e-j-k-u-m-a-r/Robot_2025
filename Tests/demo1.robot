*** Settings ***
Documentation       TC1: Demo1 robot
Library             SeleniumLibrary
Resource            ../Resources/resource.robot

*** Test Cases ***
TC1: Test case section
    Open the chrome browser and navigate to the application url
    Maximize the browser window
    Verify the user is in home page
#    Print the page title and the current url

*** Keywords ***
Open the chrome browser and navigate to the application url
    Open Browser        ${app_url}      ${browser_name_headless}
    Sleep               5s

Maximize the browser window
    Maximize Browser Window

Verify the user is in home page
    ${current_url} =        Get Location
    Log To Console         The current url is: ${current_url}
    ${current_title} =      Get Title
    Log To Console         The current page title is: ${current_title}

Print the page title and the current url
    Log To Console         The current page title is: ${current_title}
    Log To Console         The current url is: ${current_url}