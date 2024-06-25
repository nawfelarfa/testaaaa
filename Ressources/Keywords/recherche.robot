*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    OperatingSystem
Variables    ../Locators/user.py
Variables      ../JDD/recherche.py
Variables    ../JDD//maj.py

*** Keywords ***
Reset
    Wait Until Element Is Visible     ${namerecherche}
    Input Text    ${namerecherche}    "Admin"
    wait
    Wait Until Element Is Visible    ${nameuserrole}    
    Select From List By Label    admin
    Wait Until Element Is Visible    ${nameemployer}
    Input Text      ${nameemployer}     alalaa
    Wait Until Element Is Visible    ${statutrecherche}
    Select From List By Label    ${statutrecherche}    Enabled
    Wait Until Element Is Visible    ${usereset}
    Click Button    ${usereset}
    Should Be Empty    ${nameemployer} 
    Should Be Empty    ${namerecherche} 
    Should Be Empty     ${statutrecherche} 
    Should Be Empty     ${nameuserrole}
searchname
    Wait Until Element Is Visible    ${namerecherche}
    Input Text    ${namerecherche}     ${nom}
    Wait Until Element Is Visible    ${usersearch}
    Click Button    ${usersearch}
    Wait Until Page Contains Element     ${usernameresultat}
    Element Should Be Visible    ${usernameresultat}
searchrole
    Wait Until Element Is Visible    ${nameuserrole}
    Select From List By Label    ${nameuserrole}    ${role}
    Wait Until Element Is Visible    ${usersearch}
    Click Button    ${usersearch}
    Wait Until Page Contains Element     ${userroleresultat}
    Element Should Be Visible    ${userroleresultat}
searchemlpoyer
    Wait Until Element Is Visible     ${nameemployer}
    Input Text    ${nameemployer}      ${employer}    
    Wait Until Element Is Visible    ${usersearch}
    Click Button    ${usersearch}
    Wait Until Page Contains Element      ${employerresultat}
    Element Should Be Visible    ${employerresultat}
searchstatut
    Wait Until Element Is Visible     ${statutrecherche}
    Select From List By Label     ${statutrecherche}    ${statut}
    Wait Until Element Is Visible    ${usersearch}
    Click Button    ${usersearch}
    Wait Until Page Contains Element      ${staturesultat}
    Element Should Be Visible     ${staturesultat}
Search_user
    ${rows}    Get WebElements    ${tabresultat}
    FOR    ${row}    IN    @{rows}
        ${usern}    Get Text    ${row}//${usernameresultat}
        ${userr}    Get Text    ${row}//${userroleresultat}
        ${userst}    Get Text    ${row}//${staturesultat}
        ${emp}     Get Text    ${row}//${employerresultat}
        Run Keyword If    '${namerecherche}'=='${usern}' and '${nameuserrole}'=='${userr}' and '${userst}'=='${userstatut}' and  '${emp}'=='${nameemployer}'  
               Set Test Variable    ${row_found}    ${row}
        Run Keyword If    '${row_found}' == ''  
             Fail    
    END
suprimer
    ${rows}    Get WebElements    ${tabresultat}
    ${usern}    Get Text     ${usernameresultat}
    ${userr}    Get Text    ${userroleresultat}
    ${userst}    Get Text    ${staturesultat}
    ${emp}     Get Text    ${employerresultat}
    Click Button    ${userdel}
    Wait Until Element Is Enabled    ${confirmationsupr}
    Click Button    ${confirmationsupr}
    FOR    ${row}    IN    @{rows}
        Run Keyword Unless    '${usernameresultat}'!='${usern}'      Fail    User ${usern} existe encore
    END
update
     Wait Until Element Is Visible     ${maj}
     Click Button    ${maj}
     Wait Until Element Is Visible       //form[@class='oxd-form']//div[@class='oxd-select-text oxd-select-text--active']//div[@class='oxd-select-text-input' and contains(text(), 'ESS')]'
     Execute JavaScript    document.evaluate("//form[@class='oxd-form']//*[@class='oxd-select-text oxd-select-text--active']//*[@class='oxd-select-text-input' and contains(text(), 'ESS')]", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click();
     Wait Until Element Is Visible     ${userstatut}
     Select From List By Label      ${userstatut}     ${statutaj}
     Wait Until Element Is Visible    ${employername}
     Input Text    ${employername}     ${employeraj}
     Wait Until Element Is Visible    ${username}
     Input Text    ${username}     ${nomaj}    
     Click Button    ${usersave}
     Alert Should Be Present

    