*** Settings ***
Documentation     Project ID: WEB-Lab7
...               Test Scenario ID: UAT-Lab7-001
...               Test Scenario Name: กรอกข้อมูลครบถ้วน
...               UAT Name: เว็บฟอร์ม Travel Insurance Inquiry
Resource          resource.robot

*** Variables ***
${DELAY}    6s
${BASE_URL}    http://localhost:7272
${FORM_URL}    ${BASE_URL}/Form.html


*** Test Cases ***
Open Form:
    Start Chrome For Testing
    Go To    ${FORM_URL}

Record Success:
    Input Text    ${firstname}    Somsong
    Input Text    ${lastname}    Sandee
    Input Text    ${destination}    Europe
    Input Text    ${contactperson}    Sodsai Sandee
    Input Text    ${relationship}    Mother
    Input Text    ${email}    somsong@kkumail.com
    Input Text    ${phone}    081-111-1234
    Click Button    ${submitButton}
    Sleep    ${DELAY}