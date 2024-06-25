*** Settings ***
Library  SeleniumLibrary
Variables  ../Locateurs/Locators.py
*** Keywords ***
Logout
    Wait Until Element Is Visible  ${reduire}  timeout=5
    CLick Element  ${reduire}
    Wait Until Element Is Visible  ${menu}  timeout=5
    #Click Element    ${menu}
    #Wait Until Element Is Visible  ${LogoutButton}  timeout=5
    #Click Element  ${LogoutButton}
    #Wait Until Element Is Visible  ${Nomuser}  timeout=5