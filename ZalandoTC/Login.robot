*** settings ***
Library        SeleniumLibrary
Suite Setup    Open browser landing page
Test Teardown  close browser
Resource       Resource.robot


*** Test case ***
SuccessfullLogin
    Accept cookies
    Navigate to Loginpage
    Input email
    Input Password
    Submit Credentials
    
   
