*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/resources.robot


*** Variables ***
${CHROME}       chrome
${URL}          https://opensource-demo.orangehrmlive.com/


*** Test Cases ***
TC1
    ${PageTitle}=    launchBrowser    ${URL}    ${CHROME}
    Log    ${PageTitle}
    Wait Until Page Contains    Login
    login
    Close Browser
