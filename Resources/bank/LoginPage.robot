*** Settings ***

Library     SeleniumLibrary
Library     Collections

Resource        ../../Resources/bank/AccountPage.robot  
Resource        ../../Resources/bank/CustomerPage.robot
Resource        ../../Resources/resource.robot

*** Variables ***

${bank_name}                XYZ Bank
${xyz_bank_text}            xpath://strong[@class='mainHeading']
${customer_login_btn}       xpath://button[normalize-space()='Customer Login']
${bank_manager_login_btn}   xpath://button[normalize-space()='Bank Manager Login']
${home_menu_in_login_screen}    xpath://button[normalize-space()='Home']

*** Keywords ***
Open browser and launch the application url
    Open Browser        ${xyz_bank_url}       ${browser_name_headless}
    Sleep       2s

Verify the user is in the login page
    Element Should Be Visible       ${xyz_bank_text}

Verify there are 2 types of login present in this screen
    Element Should Be Visible      ${customer_login_btn}
    Element Should Be Visible      ${bank_manager_login_btn}

Print the page title
    ${pageTitle}        Get Title
    Log To Console      ${pageTitle}

Print the page current url
    ${currentURL}       Get Location
    Log To Console      ${currentURL}

Verify the display of bank name in the login screen
    Element Should Be Visible       ${xyz_bank_text}
    Element Should Contain      ${xyz_bank_text}        ${bank_name}

Click on Customer Login menu
    Click Element       ${customer_login_btn}
    Sleep       2s

Select the customer from the dropdown and click on login button
    Click Element       ${your_name_drop_down}
    Click Element       ${harry_potter_value}
    Click Element       ${login_btn}
    Sleep       4s

Click on bank manager login
     Click Element      ${bank_manager_login_btn}
     Sleep      4s

