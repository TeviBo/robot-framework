*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.countries-ofthe-world.com/flags-of-the-world.html
${CHROME}    chrome

*** Test Cases ***
ScrollingTest
    Open Browser    ${URL}    ${CHROME}
    Maximize Browser Window

    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)
    Element Should Be Visible    //img[@alt='Flag of Luxembourg']

    Scroll Element Into View    //img[@alt='Flag of Cabo Verde']
    Element Should Be Visible    //img[@alt='Flag of Cabo Verde']

    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)
    Element Should Be Visible    //img[@alt='Flag of Argentina']
    Close Browser
