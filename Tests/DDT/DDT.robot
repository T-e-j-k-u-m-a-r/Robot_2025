*** Settings ***
Library     DataDriver      ../../TestData/User.csv

*** Test Cases ***
TC1
    [Template]  KY1

*** Keywords ***
KY1
    [Arguments]    ${username}    ${city}
    Log   My name is: ${username}
    Log   And my city is: ${city}

