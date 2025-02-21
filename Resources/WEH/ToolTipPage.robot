*** Settings ***
Library         SeleniumLibrary
Library         Collections
Library         String

*** Variables ***
${tool_tip_url}         https://seleniumpractise.blogspot.com/2019/08/tooltip-in-selenium-or-help-text-example.html?m=1
${tool_tip_url2}        https://seleniumpractise.blogspot.com/2019/09/bootstrap-tooltip-in-selenium.html?m=1#

*** Keywords ***
Open browser navigate to tooltip application url
    Open Browser    ${tool_tip_url}         Chrome
    Maximize Browser Window

Print the tooltip message to the console
    Mouse Over      //div[@class='tooltip']
    Sleep   1
    ${tool_tip_text}   Get Text    //span[@class='tooltiptext']
    Log To Console      tooltipmessage is : ${tool_tip_text}

Open browser navigate to bootstrap tooltip application url
    Open Browser    ${tool_tip_url2}         Chrome
    Maximize Browser Window

Print the tooltip message to the console from bootstrap site
    Mouse Over      //a[normalize-space()='Hover over me']
    Sleep   1
    ${tool_tip_text}    Get Element Attribute   //a[normalize-space()='Hover over me']      data-original-title
    Log To Console      tooltipmessage from bootstrap tooltip is: ${tool_tip_text}