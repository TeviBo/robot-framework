*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
launchBrowser
    [Arguments]    ${URL}    ${CHROME}
    Open Browser    ${URL}    ${CHROME}
    Maximize Browser Window
    ${title}=    Get Title
    [Return]    ${title}
login
    Input Text    name=username    Admin
    Input Text    name=password    admin123
    Click Button    xpath://button['contains(text(), "Login")']