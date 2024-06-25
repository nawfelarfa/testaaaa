*** Settings ***
Library  SeleniumLibrary
Variables  ../locateurs/locators.py
*** Keywords ***
Input Username
    Input Text  ${Nomuser}  ${Username}

Input Pass
    Input Text  ${Motpass}  ${Password}

Click Login
        Click Element  ${LoginButton}
    
