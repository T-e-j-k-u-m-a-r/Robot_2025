*** Settings ***
Library         SeleniumLibrary
Library         Collections
Library         String
Resource        ../../Resources/WEH/ToolTip.robot

Test Setup      ToolTipPage.Open browser navigate to tooltip application url
Test Teardown   Close All Browsers


*** Test Cases ***
TC2: Handling Tooltip
    [documentation]  This test case demonstrates the handling of tool tips
    [tags]           smoke
    ToolTipPage.Print the tooltip message to the console
    ToolTipPage.Open browser navigate to bootstrap tooltip application url
    ToolTipPage.Print the tooltip message to the console from bootstrap site




