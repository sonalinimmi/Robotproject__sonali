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

*** Keywords ***
MyBrowserKey
    Open Browser    ${URL}    Chrome

*** Test Cases ***
LoginTest
    MyBrowserKey
    Set Browser Implicit Wait     5
    Input Text       id=txtUsername    Admin
    Input Text       id=txtPassword    admin123
    Click Button     id=btnLogin 
    Click Element    link=Assign Leave  
    Input Text       id=assignleave_txtEmployee_empName   David Morris
    Select From List By Value  name=assignleave[txtLeaveType]  3  
    Input Text    id=assignleave_txtFromDate    2022-08-16  
    Input Text    id=assignleave_txtToDate    2022-08-18  
    Input Text   id=assignleave_txtComment   Kindly Approve my request  
    Click Button    id=assignBtn       
               
    # Click Element  id=welcome
    # Click Element  link=Logout
    # Close All Browsers
    
    
    

    
          
    
            