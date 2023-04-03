*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL}          https://demowebshop.tricentis.com/register
${BROWSER}      chrome


*** Test Cases ***
RegisterTest

    ${speed}=    Get Selenium Speed
    Log To Console    message=${speed}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    1 seconds
    Title Should Be    Demo Web Shop. Register
    Select Radio Button    Gender    M
    Input Text    FirstName    John
    Input Text    LastName    Doe
    Input Text    Email    tuyki@email.com
    Input Text    Password    Ab123456
    Input Text    ConfirmPassword    Ab123456
    Click Button    register-button
    Element Should Be Visible    //div[contains(text(),'Your registration completed')]
    Click Button    //input[@value = 'Continue']
    Title Should Be    Demo Web Shop
    ${speed}=    Get Selenium Speed
    Log To Console    message=${speed}
    Close Browser