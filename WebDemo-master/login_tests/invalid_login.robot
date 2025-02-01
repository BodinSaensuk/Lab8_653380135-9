*** Settings ***
Documentation     Project ID: WEB-Lab7
...               Test Scenario ID: UAT-Lab7-002
...               Test Scenario Name: กรอกข้อมูลไม่ครบถ้วน
...               UAT Name: เว็บฟอร์ม Travel Insurance Inquiry
...    
Resource          resource.robot

*** Variables ***
${DELAY}    6s
${BASE_URL}    http://localhost:7272
${FORM_URL}    ${BASE_URL}/Form.html

*** Test Cases ***
Open Form:
    Start Chrome For Testing
    Go To    ${FORM_URL}

Empty Destination:
    Input Text    ${firstname}    Somsong
    Input Text    ${lastname}    Sandee
    # Input Text    ${destination}    Europe
    Input Text    ${contactperson}    Sodsai Sandee
    Input Text    ${relationship}    Mother
    Input Text    ${email}    somsong@kkumail.com
    Input Text    ${phone}    081-111-1234
    Click Button    ${submitButton}

Open Form:
    Start Chrome For Testing
    Go To    ${FORM_URL}

Empty Email:
    Input Text    ${firstname}    Somsong
    Input Text    ${lastname}    Sandee
    Input Text    ${destination}    Europe
    Input Text    ${contactperson}    Sodsai Sandee
    Input Text    ${relationship}    Mother
    # Input Text    ${email}
    Input Text    ${phone}    081-111-1234
    Click Button    ${submitButton}

Open Form:
    Start Chrome For Testing
    Go To    ${FORM_URL}

Empty Email:
    Input Text    ${firstname}    Somsong
    Input Text    ${lastname}    Sandee
    Input Text    ${destination}    Europe
    Input Text    ${contactperson}    Sodsai Sandee
    Input Text    ${relationship}    Mother
    Input Text    ${email}    somsong@
    Input Text    ${phone}    081-111-1234
    Click Button    ${submitButton}

Open Form:
    Start Chrome For Testing
    Go To    ${FORM_URL}

Empty Phone Number:
    Input Text    ${firstname}    Somsong
    Input Text    ${lastname}    Sandee
    Input Text    ${destination}    Europe
    Input Text    ${contactperson}    Sodsai Sandee
    Input Text    ${relationship}    Mother
    Input Text    ${email}    somsong@kkumail.com
    # Input Text    ${phone}    081-111-1234
    Click Button    ${submitButton}

Open Form:
    Start Chrome For Testing
    Go To    ${FORM_URL}

Invalid Phone Number:
    Input Text    ${firstname}    Somsong
    Input Text    ${lastname}    Sandee
    Input Text    ${destination}    Europe
    Input Text    ${contactperson}    Sodsai Sandee
    Input Text    ${relationship}    Mother
    Input Text    ${email}    somsong@kkumail.com
    Input Text    ${phone}    191
    Click Button    ${submitButton}