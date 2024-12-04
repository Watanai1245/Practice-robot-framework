*** Keywords ***
Open Browser And Navigate To URL
    [Documentation]    เปิด Browser และนำไปยัง URL ที่กำหนด
    [Arguments]        ${url}    ${browser}
    Open Browser       ${url}    ${browser}
    Maximize Browser Window
