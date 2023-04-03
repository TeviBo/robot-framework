*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${CHROME}       chrome
${FIREFOX}      firefox
${URL}          https://google.com
${URL1}         https://bing.com


*** Test Cases ***
MultipleBrowsersTest
    Open Browser    ${URL}    ${CHROME}
    Maximize Browser Window

    Open Browser    ${URL1}    ${FIREFOX}
    Maximize Browser Window

    Switch Browser    1
    ${title}=    Get Title
    Log To Console    ${title}

    Switch Browser    2
    ${title}=    Get Title
    Log To Console    ${title}

    Close All Browsers
