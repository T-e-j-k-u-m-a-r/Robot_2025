*** Settings ***

Library     SeleniumLibrary
Library     Collections

Resource        ../../Resources/resource.robot

*** Variables ***

${yourname_label_text}      xpath://label[normalize-space()='Your Name :']
${your_name_drop_down}      xpath://select[@id='userSelect']
${harry_potter_value}       xpath://option[text()='Harry Potter']
${login_btn}                xpath://button[normalize-space()='Login']
${logout_btn}               xpath://button[normalize-space()='Logout']


*** Keywords ***

Verify the login is success
    Element Should Be Visible   ${welcome_text}

Logout from the application
    Click Element       ${logout_btn}
    Sleep       4s

