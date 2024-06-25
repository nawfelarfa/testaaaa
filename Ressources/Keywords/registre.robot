*** Settings ***
Library  SeleniumLibrary
Library    CSVLibrary
Library    OperatingSystem
Library    Collections
Variables  ../locateurs/locators.py
*** Keywords ***
Register
    ${present}=  Run Keyword And Return Status    Element Should Be Visible   ${cokies}
    Run Keyword If    ${present}    Click Element  ${cokies}
    Wait Until Element Is Visible  ${compte}  
    Click Element     ${compte}
    Click element      ${inscrire}
    ${file_content}=    Get File    C:\\Users\\mjaba\\Desktop\\Orange\\Ressources\\JDD\\info.csv
    
    ${table}=    Evaluate    [line.split(',') for line in $file_content.splitlines()[1:]]
    
    FOR    ${row}    IN    @{table}
      ${mail}=      Set Variable     ${row}[3]
      ${nomm}=      Set Variable     ${row}[0]
      ${pnomm}=      Set Variable     ${row}[1]
      ${adr}=      Set Variable     ${row}[2]
      Input Text    ${nom}       ${nomm}
      Input Text    ${nom}      ${pnomm}
      Input Text    ${nom}      ${adr}
      Input Text    ${email}    ${mail}
      ${vmail}=   Get Value     ${email}
      Log    ${vmail}
      Log    ${mail}
      Should Be Equal As Strings    ${vmail}     ${mail}   ignore_case=False
      Log    "Email saisi avec non succès : ${email}"
   END
