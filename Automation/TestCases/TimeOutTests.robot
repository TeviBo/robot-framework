*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL}          https://demowebshop.tricentis.com/register
${BROWSER}      chrome


*** Test Cases ***
RegisterTest
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    ${time}=    Get Selenium Timeout
    Log To Console    ${time}
    # 5sec default timeout
    Set Selenium Timeout    10 seconds
    Wait Until Page Contains    Register
    Title Should Be    Demo Web Shop. Register
    Select Radio Button    Gender    M
    Input Text    FirstName    John
    Input Text    LastName    Doe
    Input Text    Email    hfhcvbxcv@email.com
    Input Text    Password    Ab123456
    Input Text    ConfirmPassword    Ab123456
    Click Button    register-button
    Element Should Be Visible    //div[contains(text(),'Your registration completed')]
    Click Button    //input[@value = 'Continue']
    Title Should Be    Demo Web Shop
    ${time}=    Get Selenium Timeout
    Log To Console    ${time}
    Close Browser