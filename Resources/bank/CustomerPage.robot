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
${account_number_drop_down_ele}         xpath://select[@ng-hide="noAccount"]
${account_number_third_value_from_dropdown_ele}         xpath://select[@ng-hide="noAccount"]//option[3]
${changed_account_number_ele}        css:div[class='center'] strong:nth-child(1)
${change_currency_ele}              css:div[class='center'] strong:nth-child(3)
${changed_account_number_value}        1006
${change_currency_value}              Rupee



*** Keywords ***

Verify the login is success
    Element Should Be Visible   ${welcome_text}

Logout from the application
    Click Element       ${logout_btn}
    Sleep       4s

click on account number dropdown menu
    Click Element       ${account_number_drop_down_ele}
    Sleep       4s

select the third value from the dropdown menu
    Click Element       ${account_number_third_value_from_dropdown_ele}
    Sleep       4s

verify the account number is changed as per the selected values from the dropdown
    Element Should Contain      ${changed_account_number_ele}           ${changed_account_number_value}
    Sleep   4s

verify the currency type is changed as per the selected values from the dropdown
    Element Should Contain      ${change_currency_ele}      ${change_currency_value}
    Sleep   4s



