*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CHROME_BROWSER_PATH}  C:/Lab7_Test_Automation_6533801359/Lab7_Test-Automation_653380135-9/WebDemo-master/ChromeForTesting/chrome.exe
${CHROME_DRIVER_PATH}  C:/Lab7_Test_Automation_6533801359/Lab7_Test-Automation_653380135-9/WebDemo-master/ChromeForTesting/chromedriver.exe

*** Test Cases ***
TC_001: Start Chrome For Testing
    ${chrome_options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys
    Set Variable  ${chrome_options.binary_location}  ${CHROME_BROWSER_PATH}
    ${service}=  Evaluate  sys.modules["selenium.webdriver.chrome.service"].Service(executable_path=r"${CHROME_DRIVER_PATH}")  sys
    Create Webdriver  Chrome  options=${chrome_options}  service=${service}
    Go To  https://www.kku.ac.th
