*** Settings ***
Library         SeleniumLibrary
Library         Collections
Library         String

*** Variables ***
${app_url}      https://demo.automationtesting.in/Alerts.html
${cancel_alert_text_value}      You Pressed Cancel
${accept_alert_text_value}      You pressed Ok
${alert_sample_text}            Robot!
${input_text_alert_text_value}      Hello Robot! How are you today

*** Keywords ***
Open browser and navigate to application
    Open Browser    ${app_url}          Chrome

Maximize the browser window
    Maximize Browser Window

Handle Alert type 1
    Click Element       //a[normalize-space()='Alert with OK']
    Click Element       //button[contains(text(),'click the button to display an')]
    ${alert_message1}        Handle Alert
    Log To Console      AlertMessage1 = ${alert_message1}

Handle Alert type 2
    Click Element       //a[normalize-space()='Alert with OK & Cancel']
    Click Element       //button[normalize-space()='click the button to display a confirm box']
    Sleep  2
    ${alert_message}        Handle Alert        DISMISS
    Sleep   5
    Log To Console      AlertMessage2 = ${alert_message}
    Element Should Contain      //p[@id='demo']         ${cancel_alert_text_value}
    Click Element       //button[normalize-space()='click the button to display a confirm box']
    Sleep  2
    ${alert_message}        Handle Alert        ACCEPT
    Sleep   5
    Log To Console      AlertMessage2 = ${alert_message}
    Element Should Contain      //p[@id='demo']         ${accept_alert_text_value}

Handle Alert type 3
    Click Element       //a[normalize-space()='Alert with Textbox']
    Click Element       //button[normalize-space()='click the button to demonstrate the prompt box']
    ${alert_message3}        Handle Alert
    Log To Console      AlertMessage3 = ${alert_message3}
    Click Element       //button[normalize-space()='click the button to demonstrate the prompt box']
    Input Text Into Alert       ${alert_sample_text}        action=ACCEPT
    Sleep   5
    Element Should Contain      //p[normalize-space(text())='Hello Robot! How are you today']     ${input_text_alert_text_value}
    Sleep   5
