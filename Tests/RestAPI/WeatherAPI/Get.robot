*** Settings ***
Documentation       Get Call Demo

Library             RequestsLibrary
Library             Collections

*** Variables ***
${baseurl}          https://67ab7de55853dfff53d7a4f7.mockapi.io/
${relativePath}     /city
${cityName}



*** Test Cases ***
TC: GET Call
        Create a session to the API endpoint
        Make a get api call and print all the response
        Validate the response headers
        Validate the response content along with status code and status message

*** Keywords ***
Create a session to the API endpoint
    Create Session      mysession       ${baseurl}


Make a get api call and print all the response
    ${response}     GET On Session      mysession       ${relativePath}
    Set Global Variable      ${response}
    Log To Console  ${response}
    ${response_body}        Convert To String       ${response.content}
    Set Global Variable      ${response_body}
    ${status_code}        Convert To String       ${response.status_code}
    ${response_message}        Convert To String       ${response.reason}

    Log To Console  Responsbody: ${response_body}
    Log To Console   Status Code: ${status_code}
    Log To Console   Response Message: ${response_message}


Validate the response headers
    Log To Console  ResponsHeaders: ${response.headers}
    ${content_type}     Get From Dictionary     ${response.headers}         Content-Type
    Log To Console      ContentType= ${content_type}

Validate the response content along with status code and status message
    Should Contain      ${response_body}        Indonesia