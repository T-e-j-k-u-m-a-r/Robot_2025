*** Settings ***
Library    SeleniumLibrary
Library    String
Library    OperatingSystem

*** Variables ***
${app_url}                  https://the-internet.herokuapp.com/upload
${page_title_locator}       //h3[normalize-space()='File Uploader']
${expected_age_title_value}         File Uploader
${choose_file_locator}      xpath://input[@id='file-upload']
${upload_btn_locator}               xpath://input[@id='file-submit']
${file_uploaded_locator}            xpath://h3[normalize-space()='File Uploaded!']
${file_uploaded_confirmation_message}       File Uploaded!


*** Keywords ***
Open the browser and launch the application to upload file
        Open Browser        ${app_url}          Chrome
        Maximize Browser Window
        ${actual_page_title}        Get Text        ${page_title_locator}
        Should Be Equal         ${actual_page_title}        ${expected_age_title_value}
        Sleep       2

Upload the file and verify the file is successfully uploaded
        ${file_path}    Catenate        ${CURDIR}\\Files\\libs.png
        Log To Console      pwd: ${file_path}
        Choose File         ${choose_file_locator}           ${file_path}
        Click Element       ${upload_btn_locator}
        Sleep   5
        Element Should Be Visible       ${file_uploaded_locator}
        Element Should Contain          ${file_uploaded_locator}        ${file_uploaded_confirmation_message}




