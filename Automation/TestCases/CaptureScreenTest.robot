*** Settings ***
Library     SeleniumLibrary
Library     Screenshot


*** Variables ***
${URL}          https://opensource-demo.orangehrmlive.com/
${CHROME}       chrome


*** Test Cases ***
LoginTC
    Open Browser    ${URL}    ${CHROME}
    Maximize Browser Window
    Set Selenium Speed    1 second
    Set Selenium Timeout    15 seconds
    Wait Until Page Contains    Login
    Capture Element Screenshot
    ...    xpath://img[@alt='company-branding']
    ...    D:/workspace/practices/courses/python/automation/robot-framework/images/logo.png
    Login
    Capture Page Screenshot    D:/workspace/practices/courses/python/automation/robot-framework/images/page.png

    Close Browser


*** Keywords ***
Login
    Input Text    xpath://input[@name='username']    Admin
    Input Text    xpath://input[@name='password']    admin123
    Click Button    xpath://button[@type='submit']
