*** Settings ***
Library     SeleniumLibrary
Library     String

*** Variables ***
${app_url}      https://the-internet.herokuapp.com/nested_frames

*** Keywords ***
Open the browser and navigate to the application
    Open Browser    ${app_url}      Chrome

Maximize the browser window
    Maximize Browser Window

Select frame left and verify if the frame contain LEFT in it or not and then unselect it
    Select Frame        css:frame[src="/frame_top"]
    Select Frame        css:frame[src="/frame_left"]
    Sleep   2
    Current Frame Should Contain       LEFT
    Unselect Frame

Select frame middle and verify if the frame contain MIDDLE in it or not and then unselect it
    Select Frame        css:frame[src="/frame_top"]
    Select Frame        css:frame[src="/frame_middle"]
    Current Frame Should Contain       MIDDLE
    Unselect Frame


Select frame right and verify if the frame contain RIGHT in it or not and then unselect it
    Select Frame        css:frame[src="/frame_top"]
    Select Frame        css:frame[src="/frame_right"]
    Current Frame Should Contain        RIGHT
    Unselect Frame


Select frame bottom and verify if the frame contain BOTTOM in it or not and then unselect it
    Select Frame        css:frame[src="/frame_bottom"]
    Current Frame Should Contain        BOTTOM
    Unselect Frame

