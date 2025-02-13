*** Settings ***
Documentation       Get call REST API automation for the weather report API

Library         RequestsLibrary
Library         Collections

*** Variables ***

${baseurl}                           https://demoqa.com/
${relativepath}                      utilities/weather/city/
${cityName}                          Delhi
${contentTypeKey1}                   Content-Type
${expectedContentTypeKeyValue1}      application/json

*** Test Cases ***
TC01: Get API Call
    Establish a http connection to the endpoint
    Make a get call and validate the responses and print results
#    Validate the response content, status code, reason or message
#    Print all the response headers
#    Validate the content type from the response header

*** Keywords ***
Establish a http connection to the endpoint
    Create Session  mysession   ${baseurl}
    Sleep   2s

Make a get call and validate the responses and print results
     ${response}        GET On Session  mysession       ${relativepath}${cityName}

    ${response_body}        Convert To String         ${response.content}
#    ${statusCode}        Convert To String         ${response.status_code}
#    ${statusMessage}        Convert To String         ${response.reason}

    Log To Console      Response Body: ${response.content}
    Log To Console      Status code: ${response.status_code}
    Log To Console      Status Message or Reason: ${response.reason}
    Log To Console      Response Final URL: ${response.url}
    Log To Console      Response Text: ${response.text}

#    Validations the presence of a specific header value is present
    ${actualcontentTypeKeyValue}          Get From Dictionary         ${response.headers}     ${contentTypeKey1}
    Should Contain       ${actualcontentTypeKeyValue}       ${expectedContentTypeKeyValue1}
    Log To Console       ExpectedContentType: ${expectedContentTypeKeyValue1}

    Should Contain       ${response_body}       ${cityName}









