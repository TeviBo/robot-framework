*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL}          https://the-internet.herokuapp.com/
${CHROME}       chrome

*** Test Cases ***
GetAllLinks
    Open Browser    ${URL}    ${CHROME}
    Maximize Browser Window
    ${AllLinksCount}=    Get Element Count    xpath://a
    Log To Console    \n "[Links Count]: "${AllLinksCount}
    FOR    ${i}    IN RANGE    1    ${AllLinksCount}+1
        ${LinkItems}=    Get Webelement    xpath=(//a)[${i}]
        ${text}=    Get Text    ${LinkItems}
        Log To Console    ${text}
    END
    Close Browser
