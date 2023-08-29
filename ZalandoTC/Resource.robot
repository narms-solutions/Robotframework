*** settings ***
Library        SeleniumLibrary


*** variables ***
${url}         https://www.zalando.se/kvinna-home/ 
${Email}       robot@test.com
${Password}    Stockholm123



*** Keywords ***
Open browser landing page 
    [Arguments]    ${browser}
     open browser    ${url}   ${Browser}   
     sleep           2
     maximize browser window
     sleep           6
     set browser implicit wait    10

     wait until page contains element    xpath://button[@id='uc-btn-accept-banner']
     click element      xpath://button[@id='uc-btn-accept-banner']

Navigate to Loginpage
     click element     id:header-user-account-icon
Login with valid Credentials
    input text         id:login.email      ${Email} 
    input text         id:login.secret     ${Password} 

Submit Credentials
    click element   //body/div[@id='sso']/div[1]/div[2]/main[1]/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/button[1]
Validate the Header menu
     Location Should Be       ${url} 
    ${Header_menu}  Get WebElements    xpath://body/div[4]/div[1]/x-wrapper-pre-shell[1]/x-wrapper-re-1-9[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/nav[1]
    
    ${menu_list}      Create List
    #Log to console  ${menu_list}
    FOR   ${element}  IN   @{Header_menu}
        
        ${text}    get text    ${element}
        
        
        #Log to console  ${text}
        Append To List  ${menu_list}    ${text}
        #Log to console  ${menu_list}
    
    END
    Log to console  ${menu_list}
    ${my_string}    Catenate    SEPARATOR=\  ${menu_list}
    #Log to console  ${my_string}
    Should Contain  ${my_string}    Kvinna    Man    Barn  
   