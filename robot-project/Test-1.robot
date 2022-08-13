*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***

MyFirstTest
    # Create Webdriver    Chrome    executable path=C:\Users\sonal\Downloads\chromedriver\chromedriver.exe   
    Open Browser    https://google.com    chrome
    Click Button    id=L2AGLb     
    Input Text    name=q    Automation step by step
    Press Keys    name=q    ENTER
    # Click Button    name=btnK
    Sleep    3s      
    Close All Browsers     