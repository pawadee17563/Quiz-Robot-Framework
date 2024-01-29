** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser    ${URL}    ${BROWSER}
Suite Teardown    Close Browser
 
*** Variables ***
${URL}    http://automationexercise.com
${BROWSER}    Chrome
${USERNAME}    your_username
${PASSWORD}    your_password
 
*** Test Cases ***
Test User Login and Logout
    [Documentation]    Test the user login and logout functionality.
   
    Page Should Contain    Welcome to Automation Exercise
 
    Click Element    xpath=//button[text()='Signup / Login']
 
    Page Should Contain    Login to your account
    Input Text    id=email    ${USERNAME}
    Input Text    id=password    ${PASSWORD} 
    Click Element    xpath=//button[text()='Login']
    Page Should Contain    Logged in as ${USERNAME}
    Click Element    xpath=//button[text()='Logout']
    Page Should Contain    Login to your account