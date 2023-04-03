*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL}          https://swisnl.github.io/jQuery-contextMenu/demo.html
${CHROME}       chrome


*** Test Cases ***
MouseActions
    # Right click/open open context menu
    Open Browser    ${URL}    ${CHROME}
    Maximize Browser Window
    Open Context Menu    xpath://span[contains(text(),'right click me')]


    # Double click action
    Go To    https://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Double Click Element    xpath://button[contains(text(),'Copy Text')]


    # Drag and drop action
    Drag And Drop    id:draggable    id:droppable


    # Custom drag and drop
    Go To    http://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    Maximize Browser Window
    Drag And Drop    id:box1    id:box101
    Drag And Drop    id:box2    id:box102
    Drag And Drop    id:box3    id:box103
    Drag And Drop    id:box4    id:box104
    Drag And Drop    id:box5    id:box105
    Drag And Drop    id:box6   id:box106
    Drag And Drop    id:box7    id:box107
    Close Browser
