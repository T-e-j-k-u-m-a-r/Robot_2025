*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${URL}    https://the-internet.herokuapp.com/

*** Test Cases ***
Test Links
    Open Browser To URL
    Get All Links And Store In List
    Log Links
    Close Browser

*** Keywords ***
Open Browser To URL
    Open Browser    ${URL}    Chrome
    Maximize Browser Window

Get All Links And Store In List
    ${allLinks} =    Get WebElements    xpath=//a
    ${count} =    Get Length    ${allLinks}
    Log To Console    Total Links: ${count}
    @{links}=    Create List
    FOR    ${a}    IN    @{allLinks}
        ${text}=    Get Text    ${a}
        Log To Console  ${text}
        Append To List    @{links}    ${text}
    END
    [RETURN]    @{links}

Log Links
    [Arguments]    @{links}
    Log To Console    Links: ${links}