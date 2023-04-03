*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${LOGIN URL}    https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${CHROME}       chrome


*** Keywords ***
Launch Browser
    Open Browser    ${LOGIN URL}    ${CHROME}
    Maximize Browser Window

Close Browsers
    Close All Browsers

Open Login Page
    Go To    ${LOGIN URL}

Input Username
    [Arguments]    ${username}
    Input Text    id=Email    ${username}

Input Pwd
    [Arguments]    ${password}
    Input Text    id=Password    ${password}

Click Login Button
    Click Button    //button[@type='submit']

Click Logout Link
    Click Link    Logout

Error Message Should Be Visible
    Page Should Contain    Login was unsuccessful

Dashboard Page Should Be Visible
    Page Should Contain    Dashboard
