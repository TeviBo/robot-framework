*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}    https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    Open Browser    ${URL}    ${BROWSER}
    loginToApplication
    Close Browser
    Open Browser    ${URL}    firefox
    loginToApplication
    Close Browser


*** Keywords ***
loginToApplication
    Maximize Browser Window
    Click Link    xpath://a[contains(text(),'Log in')]
    Input Text    id:Email    admin@admin.com
    Input Text    id:Password    admin1234
    Click Button  xpath://button[contains(text(),'Log in')]