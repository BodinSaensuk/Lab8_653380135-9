*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${SERVER}         http://localhost:7272
${BROWSER}        Chrome
${DELAY}          3s
${firstname}      id=firstname
${lastname}       id=lastname
${destination}    id=destination
${contactperson}  id=contactperson
${relationship}   id=relationship
${email}          id=email
${phone}          id=phone
${submitButton}   id=submitButton
${CHROME_BROWSER_PATH}    ${EXECDIR}${/}ChromeForTesting${/}chrome.exe
${CHROME_DRIVER_PATH}     ${EXECDIR}${/}ChromeForTesting${/}chromedriver.exe

*** Keywords ***
Start Chrome For Testing
    # Initialize Chrome Options
    ${chrome_options}  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys
    ${chrome_options.binary_location}  Set Variable  ${CHROME_BROWSER_PATH}
    # Initialize Chrome Service
    ${service}=  Evaluate  sys.modules["selenium.webdriver.chrome.service"].Service(executable_path=r"${CHROME_DRIVER_PATH}")

    # Create WebDriver with updated options (selenium >= 4.10+)
    Create Webdriver    Chrome    options=${chrome_options}    service=${service}
