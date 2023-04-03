*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${BROWSER}      chrome
${URL}          https://demowebshop.tricentis.com/register
${URL1}         https://automationexercise.com/

*** Test Cases ***
MyTestCase
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    Open Browser    ${URL1}    ${BROWSER}
    Maximize Browser Window
    Close All Browsers