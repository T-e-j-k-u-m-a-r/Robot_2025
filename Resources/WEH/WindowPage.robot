*** Settings ***
Library         SeleniumLibrary
Library         Collections
Library         String


*** Variables ***
${app_url}          https://demo.automationtesting.in/Windows.html


*** Keywords ***
Open browser and navigate to windows page
    Open Browser        ${app_url}          Chrome

Maximize the browser window size
    Maximize Browser Window

Handle new tabbed window
    Click Element       //a[normalize-space()='Open New Tabbed Windows']
    Click Element       //a[@href='http://www.selenium.dev']//button[@class='btn btn-info'][normalize-space()='click']
    Sleep   3
    Switch Window       Selenium
    ${window_title}     Get Title
    Log To Console      Title of tabbed new window: ${window_title}
    Close Window
    Switch Window       MAIN
    ${window_title}     Get Title
    Log To Console      Title of main window: ${window_title}

Handle new separate window
    Click Element       //a[normalize-space()='Open New Seperate Windows']
    Click Element       //button[@class='btn btn-primary']
    Sleep   3
    Switch Window       Selenium
    ${window_title}     Get Title
    Log To Console      Title of tabbed new window: ${window_title}
    Close Window
    Switch Window       MAIN
    ${window_title}     Get Title
    Log To Console      Title of main window: ${window_title}

Handle new separate multiple window
    Click Element       //a[normalize-space()='Open Seperate Multiple Windows']
    Click Element       //button[@onclick='multiwindow()']
    Sleep   3
    Switch Window       Selenium
    ${window_title1}     Get Title
    Log To Console      Title of tabbed new window1: ${window_title1}
    Close Window
    Switch Window       Index
    ${window_title2}     Get Title
    Log To Console      Title of tabbed new window1: ${window_title2}
    Close Window
    Switch Window       MAIN
    ${window_title}     Get Title
    Log To Console      Title of main window: ${window_title}







