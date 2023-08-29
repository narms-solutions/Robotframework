*** settings ***
Library        SeleniumLibrary
#Suite Setup    Open browser landing page
Test Teardown  close browser
Resource       Resource.robot


*** Test case ***

SuccessfullLogin Run in Chrome
    [Tags]    chrome
    Run Keywords
       Open browser landing page   chrome
       Navigate to Loginpage
       Login with valid Credentials
       Submit Credentials
       

SuccessfullLogin Run in Firefox
    [Tags]    firefox
    Run Keywords
       Open browser landing page    firefox
       Navigate to Loginpage
       Login with valid Credentials
       Submit Credentials
       
   
