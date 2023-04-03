*** Settings ***
Library             SeleniumLibrary
Resource            ../resources/login_resources.robot

Suite Setup         Launch Browser
Suite Teardown      Close Browsers
Test Template       Invalid login

*** Test Cases ***    username    password
Right User Empty Pwd    admin@yourstore.com    ${EMPTY}

Right User Wrong Pwd    admin@yourstore.com    xyz

Wrong User Right Pwd    adm@yourstore.com    admin

Wrong User Empty Pwd    adm@yourstore.com    ${EMPTY}

Wrong User Wrong Pwd    adm@yourstore.com    xyz


*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${password}
    Input username    ${username}
    Input Pwd    ${password}
    Click Login Button
    Error Message Should Be Visible
