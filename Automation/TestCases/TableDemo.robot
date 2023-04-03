*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${BROWSER}      chrome
${URL}          https://testautomationpractice.blogspot.com/


*** Test Cases ***
TableValidations
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Page Should Contain    Automation Testing Practice
    Scroll Element Into View    //table[@name='BookTable']
    ${rows}=    Get Element Count    //table[@name='BookTable']/tbody/tr
    ${cols}=    Get Element Count    //table[@name='BookTable']/tbody/tr[1]/th

    Log To Console    ${rows}
    Log To Console    ${cols}

    ${data}=    Get Text    //table[@name='BookTable']/tbody/tr[5]/td[1]
    Log To Console    ${data}

    Table Column Should Contain    xpath://table[@name='BookTable']    2    Author

    Table Row Should Contain    xpath://table[@name='BookTable']    4    Learn JS

    Table Cell Should Contain    xpath://table[@name='BookTable']    5    2    Mukesh

    Table Header Should Contain    xpath://table[@name='BookTable']    BookName

    Close Browser