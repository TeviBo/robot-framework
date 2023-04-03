*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${BROWSER}      chrome
${URL}          https://demo.automationtesting.in/Windows.html


*** Test Cases ***
TabbedWindowsTest
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    Click Link    xpath://*[@id="Tabbed"]/a
    Title Should Be    Frames & windows

    Switch Window    title=Selenium
    Title Should Be    Selenium

    Switch Window    title=Frames & windows
    Title Should Be    Frames & windows

    Close Browser
