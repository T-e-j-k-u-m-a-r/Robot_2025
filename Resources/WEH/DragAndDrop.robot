*** Settings ***
Library     SeleniumLibrary
Library     String

*** Variables ***
${app_url}      https://demo.automationtesting.in/Static.html
${source_locator}       //img[@id='angular']
${target_locator}       //div[@id='droparea']

*** Keywords ***
Open browser and navigate to the application
    Open Browser        ${app_url}      Chrome

Maximum browser
    Maximize Browser Window

Perform drag and drop operation
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Sleep   5
    Drag And Drop       ${source_locator}       ${target_locator}
    Element Should Be Visible           ${target_locator}
    Sleep   5

Close browser window
    Close Browser
