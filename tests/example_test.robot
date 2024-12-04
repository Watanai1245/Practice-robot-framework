*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/keywords.robot
Suite Setup    Open Browser And Navigate To URL    ${URL}    ${BROWSER}
# Suite Teardown    Close Browser

*** Variables ***
${URL}      https://testautomationpractice.blogspot.com/
${BROWSER}  Chrome

*** Test Cases ***
Validate URL With W3C
    Input Text    id=doc    https://www.example.com
    Click Element    xpath=(//input[@id='submit'])[1]
    Wait Until Page Contains    Showing results for    timeout=20s
    Page Should Contain    Document checking completed.
    Run Keyword If Test Passed    Close Browser

