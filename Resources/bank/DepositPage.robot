*** Settings ***

Library         SeleniumLibrary
Library         Collections

Resource        ../../Resources/bank/CustomerPage.robot
Resource        ../../Resources/resource.robot

*** Variables ***


*** Keywords ***
Click on deposit menu
    Click Element       ${deposit_menu}
    Sleep       4s

Verify amount to be deposited label is displayed
    Element Should Be Visible       ${amount_to_be_deposited_label}
    Sleep       2s

Enter the amount
    Input Text      ${amount_to_deposited_input_text_box}       ${deposited_amount_value}
    Sleep       2s

Click on deposit button
    Click Element       ${depost_btn}
    Sleep       2s

Verify the confirmation message on transaction success
    Element Should Be Visible       ${deposit_success_label}
    Sleep   2s


Verify the balance amount is displayed in the balance value
    Element Should Be Visible       ${balance_value_ele}
    Sleep   2s
    Element Should Contain          ${balance_value_ele}        ${deposited_amount_value}
    Sleep   2s


