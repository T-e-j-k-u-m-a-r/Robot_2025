*** Settings ***

Library         SeleniumLibrary
Library         Collections

Resource        ../../Resources/bank/TransactionPage.robot

*** Variables ***
${amount_to_be_withdrawn_ele}           xpath://label[normalize-space()='Amount to be Withdrawn :']
${amount_input_textbox}                 xpath://input[@placeholder='amount']
${withdraw_btn}                         xpath://button[normalize-space()='Withdraw']
${transaction_success_message}          xpath://span[@class='error ng-binding']
${total_rows_after_deposit_and_withdraw}        xpath://table//tbody//tr
${withdrawn_amount_from_table_ele}                         //table//tbody//tr[2]//td[2]
${withdrawn_amount_value}       100
${balance_ele}                              xpath://div[@ng-hide='noAccount'][1]//strong[2]
${balance_value}            11
${transaction_type_for_withdrawal_flow_ele_from_table}         xpath://table//tbody//tr[2]//td[3]
${transaction_type_for_withdrawal_flow_value_from_table}     Debit

*** Keywords ***
verify the label amount to be withdrawn is displayed
    Element Should Be Visible     ${amount_to_be_withdrawn_ele}
    Sleep   2s

enter the withdrawal amount
    Input Text      ${amount_input_textbox}         ${withdrawn_amount_value}
     Sleep   2s

click on withrawal button
    Click Element       ${withdraw_btn}
     Sleep   2s

navigate to transaction menu
    Click Element       ${transaction_menu}
     Sleep   2s

validate the withdrawal amount and its transaction type
    Element Should Contain      ${withdrawn_amount_from_table_ele}      ${withdrawn_amount_value}
    Element Should Contain      ${transaction_type_for_withdrawal_flow_ele_from_table}      ${transaction_type_for_withdrawal_flow_value_from_table}
    Sleep   2s

click on reset
    Click Element       ${reset_btn}
    Sleep   2s

verify there are no rows in the transaction table
    Element Should Not Be Visible       ${total_rows_after_deposit_and_withdraw}
    Sleep   2s

click on back button
    Click Element       ${back_btn}
    Sleep   2s


