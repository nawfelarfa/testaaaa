*** Settings ***
Library  SeleniumLibrary
Variables  ../Locateurs/Locators.py
*** Keywords ***
Opening Browser
    [Arguments]  ${site_url}  ${browser}
    Open Browser  ${site_url}  ${browser}
    Maximize Browser Window
    Wait Until Element Is Visible    ${compte}   timeout=5
    
     