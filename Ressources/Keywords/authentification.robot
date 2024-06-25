*** Settings ***
Library    SeleniumLibrary
#Resource    comun.robot
Variables    ../Locators/authentificaton.py
Variables    ../JDD/admin.py
*** Keywords ***
login
    Wait Until Element Is Visible    ${user}        timeout=20
    Input Text    ${user}     ${administareur}  
    Wait Until Element Is Visible    ${password}
    Input Password    ${password}     ${motpass}
    Wait Until Element Is Visible    ${seconnecter}
    Click Button    ${seconnecter}
    Title Should Be       OrangeHRM
connecter
    Execute JavaScript    document.querySelector('button[type="submit"]').click()    
loginkop
    Wait Until Element Is Visible    ${user}        timeout=20
    Input Text    ${user}     ${administareur}  
    Wait Until Element Is Visible    ${password}
    Input Password    ${password}     orange
    Click Button    ${seconnecter}
    Wait Until Page Contains    Invalid credentials
loginko
    Wait Until Element Is Visible    ${user}        timeout=20
    Input Text    ${user}     zdazd 
    Wait Until Element Is Visible    ${password}
    Input Password    ${password}     orange
    Click Button    ${seconnecter}
    Wait Until Page Contains    Invalid credentials
deconnexion
    Wait Until Element Is Visible    ${profil}
    Click Element    ${profil}
    Wait Until Element Is Visible    ${logout}
    Click Element    ${logout}      

    
    
