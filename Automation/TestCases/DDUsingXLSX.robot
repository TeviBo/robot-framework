*** Settings ***
Library             SeleniumLibrary
Resource            ../resources/login_resources.robot
Library             DataDriver    ../TestData/LoginData.xlsx sheet_name=LoginData

Suite Setup         Launch Browser
Suite Teardown      Close Browsers
Test Template       Invalid Login

*** Test Cases ***
LoginTestWithExcel using ${username} and ${password}

*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Pwd    ${password}
    Click Login Button
    Error Message Should Be Visible