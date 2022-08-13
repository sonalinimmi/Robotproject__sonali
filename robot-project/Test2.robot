*** Settings ***
Library    SeleniumLibrary

Suite Setup  Log    I am inside test suite setup
    
Suite Teardown    Log    I am inside test suite teardowm    
Test Setup    Log    I am inside test setup
Test Teardown    Log    I am inside test teardown            

Default Tags    sanity
*** Variables ***
${URL}   https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}   Admin   admin123
&{LOGINDATA}     username=Admin  password=admin123                          

*** Test Cases ***
LoginTest
    Open Browser    ${URL}   Chrome
    Set Browser Implicit Wait     5
    Input Text    id=txtUsername    Admin
    Input Text    id=txtPassword    admin123
    Click Button  id=btnLogin       
    Click Element  id=welcome
    Click Element  link=Logout 
    Close Browser
    Log            Test completed 
    
          
    
            