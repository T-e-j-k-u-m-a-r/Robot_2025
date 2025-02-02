*** Settings ***

Library  SeleniumLibrary

*** Variables ***
#Locators of home page
${login_success_confirmation_msg}       css:.post-title
${congratulation_student_msg}           css:p[class='has-text-align-center'] strong
${logout_btn}                           xpath://a[normalize-space()='Log out']

*** Keywords ***
Verify the login is success
     Element Should Be Visible      css:p[class='has-text-align-center'] strong
     Element Should Be Visible      css:.post-title
     Sleep  3s

Logout from the application
    Click Element       ${logout_btn}
    Sleep    3s

