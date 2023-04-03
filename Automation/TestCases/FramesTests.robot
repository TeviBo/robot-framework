*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${BROWSER}      chrome
${URL}          https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html


*** Test Cases ***
MyTestCase
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    Select Frame    name:packageListFrame
    Click Link    org.openqa.selenium
    Unselect Frame

    Select Frame    name:packageFrame
    Click Link    WebDriver
    Unselect Frame

    Select Frame    classFrame
    Click Link    Help
    Unselect Frame

    Close Browser
