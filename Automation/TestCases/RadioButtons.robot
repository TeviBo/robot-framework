*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL}          https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm
${BROWSER}      chrome


*** Test Cases ***
Testing Radio Buttons and Check Boxes
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    2seconds

    # Selecting Radio Buttons
    Select Radio Button    sex    Female
    Select Radio Button    exp    3

    # Selecting Check Boxes
    Select Checkbox    xpath://span[contains(text(), 'Manual Tester')]/input
    Select Checkbox    xpath://span[contains(text(), 'Automation Tester')]/input
    Select Checkbox    xpath://span[contains(text(), 'Selenium Webdriver')]/input

    Unselect Checkbox    xpath://span[contains(text(), 'Manual Tester')]/input

    Close Browser
