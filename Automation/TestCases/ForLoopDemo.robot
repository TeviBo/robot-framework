*** Test Cases ***
ForLoop1
    Log To Console    \n"[Idexes:]"
    FOR    ${i}    IN RANGE    1    10
        Log To Console    ${i}
    END

ForLoop2
    Log To Console    \n"[Idexes:]"
    FOR    ${i}    IN    1 2 3 4 5 6 7 8 9
        Log To Console    ${i}
    END

ForLoop3
    Log To Console    \n"[Idexes:]"
    FOR    ${i}    IN    1  2  3  4  5  6  7  8  9
        Log To Console    ${i}
    END

ForLoop3WithList
    @{items}    create list    1  2  3  4  5
    Log To Console    \n"[Idexes:]"
    FOR    ${i}    IN    @{items}
        Log To Console    ${i}
    END

ForLoop4
    @{namelist}    create list    john    peter    marydavid    smith    scott
    Log To Console    \n"[Idexes:]"
    FOR    ${i}    IN    @{namelist}
        Log To Console    ${i}
    END

ForLoop4
    @{items}    create list    1    2    3    4    5
    Log To Console    \n"[Idexes:]"
    FOR    ${i}    IN    @{items}
        Log To Console    ${i}
        Exit For Loop If    ${i} == 4
    END
