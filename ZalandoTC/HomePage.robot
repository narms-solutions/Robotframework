*** settings ***
Library    SeleniumLibrary
Library    Collections

Test Teardown  close browser
Resource       Resource.robot

*** Test case ***

GetTheHeaderMenuList Run in Chrome
   [Tags]    chrome
   Run Keywords
       Open browser landing page  chrome
       Validate the Header menu
GetTheHeaderMenuList Run in Firefox
   [Tags]    Firefox
   Run Keywords
       Open browser landing page  Firefox
       Validate the Header menu
