*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL}          https://demowebshop.tricentis.com/register
${BROWSER}      chrome


*** Test Cases ***
RegisterTest
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    # Set Selenium Implicit Wait    10 seconds

    Title Should Be    Demo Web Shop. Register
    Select Radio Button    Gender    M
    Input Text    FirstName1    John
    Input Text    LastName    Doe
    Input Text    Email    uiyoas@email.com
    Input Text    Password    Ab123456
    Input Text    ConfirmPassword    Ab123456
    Click Button    register-button
    Element Should Be Visible    //div[contains(text(),'Your registration completed')]
    Click Button    //input[@value = 'Continue']
    Title Should Be    Demo Web Shop
    Close Browser