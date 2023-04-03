*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${BROWSER}      chrome
${URL}          https://testautomationpractice.blogspot.com/


*** Test Cases ***
HandlingAlerts
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Click Element    xpath://button[contains(text(),'Click Me')]
    Handle Alert    accept
    Element Should Be Visible    id:demo
    Element Should Contain    id:demo    You pressed OK!
    Click Element    xpath://button[contains(text(),'Click Me')]
    Handle Alert    dismiss
    Element Should Be Visible    id:demo
    Element Should Contain    id:demo    You pressed Cancel!
    Click Element    xpath://button[contains(text(),'Click Me')]
    Handle Alert    leave
    Alert Should Be Present    Press a button!
    Alert Should Not Be Present    Press a button!
    Close Browser
