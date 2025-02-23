*** Settings ***
Library    SeleniumLibrary
Library    String

Resource    ../../Resources/WEH/FileuploadPage.robot

Test Setup              FileuploadPage.Open the browser and launch the application to upload file
Test Teardown           Close Browser


*** Test Cases ***
#[Documentation]         This test case is about the file upload scenario
#[Tags]          Smoke
TC07: File upload scenario automation
        FileuploadPage.Upload the file and verify the file is successfully uploaded

