*** Settings ***

Library     SeleniumLibrary
Library     Collections

*** Variables ***

${welcome_text}         xpath://strong[contains(text(),'Welcome')]
${customer_ele}        xpath://span[@class='fontBig ng-binding']
${customer_name}        Harry Potter
${transaction_menu}     xpath://button[normalize-space()='Transactions']
${deposit_menu}         xpath://button[normalize-space()='Deposit']
${withdrawal_menu}      xpath://button[normalize-space()='Withdrawl']
${account_number}       xpath:(//div[@ng-hide='noAccount'])[1]//strong[1]
${balance_value_ele}              xpath:(//div[@ng-hide='noAccount'])[1]//strong[2]
${currency_value_ele}             xpath:(//div[@ng-hide='noAccount'])[1]//strong[3]
${amount_to_deposited_input_text_box}       css:input[placeholder='amount']
${amount_to_be_deposited_label}             xpath://label[normalize-space()='Amount to be Deposited :']
${depost_btn}                               css:button[type='submit']
${deposited_amount_value}              100
${deposit_success_label}         xpath://span[@class='error ng-binding']
${transaction_type_value}       Credit
${amount_to_be_withdrawn_text}      xpath://label[normalize-space()='Amount to be Withdrawn :']
${withdraw_btn}                     xpath://button[normalize-space()='Withdraw']
${withdraw_amount_value}            50
${transaction_success_confirmation_text}        Transaction successful
${balance_amount_value_after_first_withdrawal}             50
${balance_amount_value_after_second_withdrawal}             50



