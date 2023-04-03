*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${CHROME}       chrome
${URL}          https://google.com/


*** Test Cases ***
NavigationTest
    Open Browser    ${URL}    ${CHROME}
    Maximize Browser Window

    # Retorna la url actual
    ${location}=    Get Location
    Log To Console    ${location}

    Go To    https://bing.com
    ${location}=    Get Location
    Log To Console    ${location}

    Go Back
    ${location}=    Get Location
    Log To Console    ${location}

    Close All Browsers
