*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CHROME_BROWSER_PATH}    ${EXECDIR}${/}ChromeForTesting${/}chrome.exe
${CHROME_DRIVER_PATH}     ${EXECDIR}${/}ChromeForTesting${/}chromedriver.exe
${URL}                    https://www.kku.ac.th

*** Test Cases ***
TC_001: Start Chrome For Testing
    # Initialize Chrome Options
    ${chrome_options}  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys
    ${chrome_options.binary_location}  Set Variable  ${CHROME_BROWSER_PATH}
    # Initialize Chrome Service
    ${service}=  Evaluate  sys.modules["selenium.webdriver.chrome.service"].Service(executable_path=r"${CHROME_DRIVER_PATH}")

    # Create WebDriver with updated options (selenium >= 4.10+)
    Create Webdriver    Chrome    options=${chrome_options}    service=${service}