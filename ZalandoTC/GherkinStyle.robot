*** settings ***
Library        SeleniumLibrary
Library    Collections

Test Teardown  close browser
Resource       Resource.robot


***Test case***  
    
ValidLoginTest in chrome
    Given Open browser landing page  chrome      
    When Open login page
    And Pass robot@test.com and Stockholm123
    Then Login should Pass
ValidLoginTest in firefox
    Given Open browser landing page  firefox  
    When Open login page
    And Pass robot@test.com and Stockholm123
    Then Login should Pass
   
VerifyMenuItems in chrome
    Given Open browser landing page  chrome    
    When I should see the header menu
VerifyMenuItems in firefox
    Given Open browser landing page  firefox     
    When I should see the header menu
    

   
 

***Keywords***
Open login page
    Navigate to Loginpage
Pass ${Email} and ${Password}  
    Login with valid Credentials
Login should Pass
    Submit Credentials

Open chrome landing page 
     Open browser landing page  chrome
Open firefox landing page 
     Open browser landing page  firefox
I should see the header menu
    Validate the Header menu



     

    