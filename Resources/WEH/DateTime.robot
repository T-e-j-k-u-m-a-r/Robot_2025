*** Settings ***
Library  DateTime

*** Test Cases ***
TC10: Get Current Date and Time
    [documentation]     Date time scenario automation
    [tags]              smoke
    ${current_date}=  Get Current Date  result_format=%Y-%m-%d %H:%M:%S
    Log To Console      Current date and time: ${current_date}
