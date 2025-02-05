*** Settings ***
Library     SeleniumLibrary
Library     Collections


*** Variables ***
${manager_text_value}       manager
${add_customer_menu}        xpath://button[normalize-space()='Add Customer']
${open_account_menu}        xpath://button[normalize-space()='Open Account']
${customer_menu}            xpath://button[normalize-space()='Customers']
${home_menu}                xpath://button[normalize-space()='Home']

#Add customer screen related locators
${first_name_label}     css:div[class='marTop'] div:nth-child(1) label:nth-child(1)
${first_name_inputbox}  css:input[placeholder='First Name']
${first_name_value}     Tejkumar

${last_name_label}      css:div[class='marTop'] div:nth-child(2) label:nth-child(1)
${last_name_inputbox}       css:input[placeholder='Last Name']
${last_name_value}      Kempaiah

${postal_code_label}    css:div[class='marTop'] div:nth-child(3) label:nth-child(1)
${post_code_inputbox}       css:input[placeholder='Post Code']
${postal_code_value}        560011

${craate_customer_btn}         css:button[type='submit']
${customer_list_rows}       css:table.table tbody tr
${newly_created_customer_ele}       Tejkumar
${table}            css:table.table

${delete_btn_of_newly_created_customer}     css:table.table tbody tr:nth-child(6) td:nth-child(5) button
${search_customer_input_box}       xpath://input[@placeholder='Search Customer']

#customer search variables
${existing_customer}        Albus
${table_row_ele}           css:table.table tbody tr

#Verify customer table contents variables
${total_rows}       css:table.table tbody tr
${total_columns}    css:table.table thead tr td
${total_cells}      xpath://table[@class="table table-bordered table-striped"]//tbody//td
${all_headers}          xpath://table[@class="table table-bordered table-striped"]//thead//tr//td

*** Keywords ***
#Bank manager login flow related keywords
Verify if the page current url contains manager in it
    Location Should Contain     ${manager_text_value}
    Sleep   1s

Verify the home page of bank manager contains add customer menu
    Element Should Be Visible     ${add_customer_menu}
    Sleep   1s

Verify the home page of bank manager contains open account menu
    Element Should Be Visible       ${open_account_menu}
    Sleep   1s

Verify the home page of bank manager contains customers menu
    Element Should Be Visible       ${customer_menu}
    Sleep   1s

Click on home menu
    Element Should Be Visible       ${home_menu}
    Click Element           ${home_menu}
    Sleep   2s

#Add new customer flow related keywords
Click on the add customer menu
    Click Element           ${add_customer_menu}
    Sleep   2s


Verify the presence of first name label
    Element Should Be Visible       ${last_name_label}
    Sleep   2s

Enter first name value
    Input Text     ${first_name_inputbox}       ${first_name_value}
    Sleep   2s


Verify the presence of last name label
    Element Should Be Visible       ${last_name_label}
    Sleep   2s


Enter last name value
    Input Text     ${last_name_inputbox}        ${last_name_value}
    Sleep   2s

Verify the presence of postal code label
    Element Should Be Visible       ${postal_code_label}
    Sleep   2s

Enter postal code value
    Input Text      ${post_code_inputbox}       ${postal_code_value}
    Sleep   2s

click on add customer button
    Click Element       ${craate_customer_btn}
    Sleep   1s

Verify the present of the alert and print the text and accept the alert
    Alert Should Be Present
    Sleep     2s

click on customer menu
    Click Element       ${customer_menu}
    Sleep   2s

verify the total rows in the cusomter list is more than 5
    ${count}    Get Element Count     ${customer_list_rows}
    Return From Keyword If  ${count} == 5
    Log To Console  Total customers in the list: ${count}
    Sleep   2s

verify the table has the first name of the newly created customer
    Input Text      ${search_customer_input_box}        ${newly_created_customer_ele}
    Sleep       2s
    ${count}    Get Element Count     ${customer_list_rows}
    Run Keyword If  ${count} == 1       Log To Console   Total customers in the search list after creation of new customer: ${count}
    Sleep   2s
    Clear Element Text      ${search_customer_input_box}

click on delete the newly created customer
    Click Element       ${delete_btn_of_newly_created_customer}
    Sleep   2s

verify the table doesn not have the first name of the newly created customer
    Input Text      ${search_customer_input_box}        ${newly_created_customer_ele}
    Sleep       2s
    ${count}    Get Element Count     ${customer_list_rows}
    Return From Keyword If  ${count} == 0
    Log To Console  Total customers in the search list after deletion: ${count}
    Sleep   2s


#Customer search *** keywords ***
search for an existing customer from the list
    Input Text      ${search_customer_input_box}            ${existing_customer}
    Sleep   2s

verify the search results table row is 1
    ${count}    Get Element Count     ${customer_list_rows}
    Return From Keyword If  ${count} == 1
    Log To Console  Total customers in the search list table is: ${count}
    Sleep   2s

verify the First name in the row 2 column 1 is same as the one entered in the search
    Table Row Should Contain     ${table_row_ele}   1      ${existing_customer}

clear the search text input box
    Clear Element Text      ${search_customer_input_box}
    Sleep   2s

#Verify customer table contents keywords

print total number of rows
     ${row_count}       Get Element Count       ${total_rows}
     Log To Console     Total rows: ${row_count}


print total number of columns
    ${col_count}       Get Element Count       ${total_columns}
    Log To Console     Total Columns: ${col_count}

print all header values
    ${header_list}      Get WebElements       ${all_headers}
    FOR    ${header}    IN    @{header_list}
        ${header_text}    Get Text    ${header}
        Log    ${header_text}
    END

print total cells in the table
    ${cell_count}       Get Element Count       ${total_columns}
    Log To Console      Total Cell Values: ${cell_count}


