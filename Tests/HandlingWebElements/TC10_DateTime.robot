*** Settings ***
Library  DateTime
Resource    ../../Resources/WEH/DateTime.robot

*** Test Cases ***
Extract Date Components
    ${current_date}=  Get Current Date  result_format=datetime
    Log To Console      Year: ${current_date.year}
    Log To Console      Month: ${current_date.month}
    Log To Console      Day: ${current_date.day}
    Log To Console      Hour: ${current_date.hour}
    Log To Console      Minute: ${current_date.minute}
    Log To Console      Second: ${current_date.second}