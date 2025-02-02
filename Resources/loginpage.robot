*** Settings ***

Library  SeleniumLibrary

*** Variables ***
${app_url}      https://practicetestautomation.com/practice-test-login/
${username}     student
${password}     Password123
${browser_name_headedmode}      Chrome
${browser_name_headlessmode}        headlesschrome

#Locators of the login page
${login_text_in_login_page}         css:section[id='login'] h2
${username_text_box}                css:#username
${password_text_box}                css:#password
${submit_login_btn}                 css:#submit

*** Keywords ***
Open browser and navigate to application url with headed mode
    Open Browser     ${app_url}      ${browser_name_headedmode}

Open browser and navigate to application url with headedless mode
    Open Browser     ${app_url}      ${browser_name_headlessmode}

Maximize the browser window
    Maximize Browser Window

Verify the user is in login page
    Element Should Be Visible      ${login_text_in_login_page}

Enter user name
    Input Text      ${username_text_box}        ${username}

Enter password
    Input Password      ${password_text_box}        ${password}

Click on login page
    Click Element       ${submit_login_btn}
    Sleep    3s






