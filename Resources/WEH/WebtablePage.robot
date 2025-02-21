*** Settings ***
Library         SeleniumLibrary
Library         Collections
Library         String

*** Variables ***
${app_url}                   https://seleniumpractise.blogspot.com/2021/08/webtable-in-html.html
${table}                     table#customers
${table_headers}             table#customers tbody tr th
${table_rows}                table#customers tbody tr
${table_name}                //h2[normalize-space()='HTML Table']
${table_name_value}          HTML Table
${browser_name_headed}       Chrome
${browser_name_headless}     headlesschrome

*** Keywords ***
Open the browser and launch the app
    Open Browser        ${app_url}            ${browser_name_headed}
    Sleep   1


Maximize the browser window
    Maximize Browser Window
    Sleep   1


Print the table name
    ${expected_table_name}      Get Text        ${table_name}
    ${tablename}        Convert To String       ${expected_table_name}
    Log To Console      Tablename = ${tablename}
    ${table_count}      Get Element Count       (//table[@id='customers'])[1]
    Log To Console      Table Count = ${table_count}

Print the total rows
    ${row_count}        Get Element Count       (//table[@id='customers'])[1]//tr
    Log To Console      Row Count = ${row_count}

Print the total columns
    ${column_count}         Get Element Count       (//table[@id='customers'])[1]//th
    Log To Console      Column Count = ${column_count}

Print the value of 2nd row 2nd column in the table
    Table Should Contain    //table[@id='customers']      FlipKart
    ${cell_value} =    Get Table Cell    //table[@id='customers']   2   2
    Log To Console    Cellvalue of 2nd row and 2nd column is: ${cell_value}

