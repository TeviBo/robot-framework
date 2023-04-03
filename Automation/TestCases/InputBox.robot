*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${BROWSER}      chrome
${URL}          https://demo.nopcommerce.com/


*** Test Cases ***
TestingInputBox
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be    nopCommerce demo store
    Click Link    xpath://a[contains(text(),'Log in')]
    ${"email_txt"}    Set Variable    id:Email

    Element Should Be Visible    ${"email_txt"}
    Element Should Be Enabled    ${"email_txt"}

    Input Text    ${"email_txt"}    example@gmail.com
    Clear Element Text    ${"email_txt"}

    Close Browser
