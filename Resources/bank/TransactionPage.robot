*** Settings ***

Library         SeleniumLibrary
Library         Collections

*** Variables ***
${transaction_menu}         css://button[normalize-space()='Transactions']
${table}                      css:.table.table-bordered.table-striped
${table_headers}               css:table.table thead tr td a
${table_row}                  css:table.table tbody tr
${table_cell}                   css:table.table tbody tr td
${back_btn}                   css:button[class='btn']
${transaction_amount_ele}       css:table tbody tr td:nth-of-type(2)
${transaction_amount_value}     100
${transaction_type_ele}         css:table tbody tr:last-child td:nth-of-type(3)
${transaction_type_value}         Credit
${reset_btn}                    xpath://button[normalize-space()='Reset']
${transactioned_amount_ele}     css:tbody td:nth-child(2)
${withdrawal_menu}              xpath://button[normalize-space()='Withdrawl']

*** Keywords ***

Click on transaction menu
    Click Element       ${transaction_menu}
    Sleep   2s

Verify if the entry of transaction row is present in this page
    Element Should Be Visible       ${table_row}
    Sleep   2s


Verify the transaction amount value is same as the one deposited
    Element Should Contain      ${transactioned_amount_ele}         ${transaction_amount_value}


Verify the transaction type is of type Credit
    Element Should Contain      ${transaction_type_ele}         ${transaction_type_value}
    Sleep   2s

Verify the transaction type is of type Debit
    Element Should Contain      ${transaction_type_ele}         ${transaction_type_value}
    Sleep   2s

Click on reset button
    Click Element      ${reset_btn}
    Sleep   2s

Verify the entry row of the transaction is being removed
    Element Should Not Be Visible     ${table_row}
    Sleep   2s

click on withdraw menu
    Click Element       ${withdrawal_menu}
    Sleep   2s




