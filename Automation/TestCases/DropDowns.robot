*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${BROWSER}      chrome
${URL}          https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm


*** Test Cases ***
Handling DropDowns and Lists
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    # Dropdowns
    Select From List By Label    continents    South America

    Select From List By Index    continents    2

    # Lists box
    Select From List By Label    selenium_commands    Navigation Commands
    Select From List By Label    selenium_commands    Switch Commands
    Select From List By Label    selenium_commands    Wait Commands

    Unselect From List By Label    selenium_commands    Wait Commands
    Close Browser
