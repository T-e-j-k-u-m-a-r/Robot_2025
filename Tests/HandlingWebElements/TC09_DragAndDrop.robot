*** Settings ***
Library     SeleniumLibrary
Library     String

Resource    ../../Resources/WEH/DragAndDrop.robot

*** Test Cases ***
TC08: Drag and Drop operation in UI screen
    [documentation]  Drag and Drop operation
    [tags]           smoke
    Open browser and navigate to the application
    Maximum browser
    Perform drag and drop operation
    Close browser

