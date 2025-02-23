*** Settings ***
Library     SeleniumLibrary
Library     String

*** Variables ***
${app_url}          https://the-internet.herokuapp.com/hovers
${ele_1}            xpath://div[@class='example']//div[1]//img[1]
${ele_2}            xpath://div[@class='example']//div[2]//img[1]
${ele_3}            xpath://div[@class='example']//div[3]//img[1]
${user1_name}       xpath://h5[normalize-space()='name: user1']
${user1_name}       xpath://h5[normalize-space()='name: user2']
${user1_name}       xpath://h5[normalize-space()='name: user3']

*** Keywords ***
Open browser and launch the hover application
    Open Browser        ${app_url}      Chrome

Maximize window
    Maximize Browser Window
    Sleep   2

Perform hover on first element and verify its content being displayed
    Mouse Over      ${ele_1}
    Sleep   3
    Wait Until Element Is Visible       ${user1_name}
    Element Should Be Visible   ${user1_name}
    Sleep   3
