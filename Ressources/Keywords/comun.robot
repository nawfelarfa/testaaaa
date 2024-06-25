*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem
Variables    ../Locators/authentificaton.py
*** Variables ***
${url}     https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}      Chrome 
*** Keywords ***
openpage
    Open Browser    ${url}    ${browser}
    Maximize Browser Window  
   
    
    