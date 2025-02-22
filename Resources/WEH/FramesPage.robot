*** Settings ***
Library         SeleniumLibrary
Library         Collections
Library         String


*** Variables ***
${app_url}          https://demo.automationtesting.in/Frames.html
${sample_text}      Automation Testing

*** Keywords ***
Open browser and navigate to windows page
    Open Browser        ${app_url}          Chrome

Maximize the browser window size
    Maximize Browser Window

Handling Single Iframe
    Select Frame    singleframe
    Input Text      //input[@type='text']       ${sample_text}
    Sleep   5
    Unselect Frame
    Click Element       //a[normalize-space()='Iframe with in an Iframe']
    Sleep   5
    Close Browser

Handling Iframe with in an Iframe
    Open Browser    https://the-internet.herokuapp.com/nested_frames    Chrome
    Maximize Browser Window
    Sleep   5
    Select Frame  css:[src="/frame_top"]
    Select Frame  css:[src="/frame_left"]
    Current Frame Should Contain  LEFT
    Unselect Frame
    Select Frame  css:[src="/frame_top"]
    Select Frame  css:[src="/frame_middle"]
    Current Frame Should Contain  MIDDLE
    Unselect Frame
    Select Frame  css:[src="/frame_top"]
    Select Frame  css:[src="/frame_right"]
    Current Frame Should Contain  RIGHT
    Unselect Frame
    Select Frame  css:[src="/frame_bottom"]
    Current Frame Should Contain  BOTTOM








