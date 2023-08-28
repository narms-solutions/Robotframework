*** settings ***
Library    SeleniumLibrary
Library    Collections
Suite Setup    Open browser landing page
Test Teardown  close browser
Resource       Resource.robot

*** Test case ***

GetTheHeaderMenuList
    Accept cookies
    Location Should Be       ${url} 
    ${Header_menu}  Get WebElements    xpath://body/div[4]/div[1]/x-wrapper-pre-shell[1]/x-wrapper-re-1-9[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/nav[1]
    ${menu_list}      Create List
    FOR   ${element}  IN   @{Header_menu}
          ${text}     get text          ${element}
          append to list    ${menu_list}   ${text}
    
    END
    log to console     ${text}
    log to console    ${menu_list} 
