*** settings ***
Library        SeleniumLibrary

*** variables ***
${url}         https://www.zalando.se/kvinna-home/ 
${Browser}     Chrome 
${Email}       robot@test.Chrome
${Password}    Stockholm123
${timer}       3


*** Keywords ***
Open browser landing page 
    open browser    ${url}   ${Browser}   
    sleep           2
    maximize browser window
    set browser implicit wait    4
Accept cookies 
    wait until page contains element    xpath://button[@id='uc-btn-accept-banner']
    click element      xpath://button[@id='uc-btn-accept-banner']
Navigate to Loginpage
     click element     id:header-user-account-icon
Input email
    input text         id:login.email      ${Email} 
Input Password
    input text         id:login.secret     ${Password} 
Submit Credentials
    click element   //body/div[@id='sso']/div[1]/div[2]/main[1]/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/button[1]
    
 
