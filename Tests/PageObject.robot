*** Settings ***
Library    SeleniumLibrary
Library    Telnet
Resource    ../Ressources/Keywords/authentification.robot
Resource    ../Ressources/Keywords/comun.robot
Resource    ../Ressources//Keywords/authentification.robot
Resource    ../Ressources/Keywords/ajoutuser.robot
Resource    ../Ressources/Keywords/recherche.robot

*** Test Cases ***
authentificationok
    [Documentation]    authentification ok
    [Tags]    smoke
    openpage
    login
    Close Browser
authentificationkop
    [Documentation]    login mot de passe invalidee
    [Tags]    passwordinvalid
    openpage
    loginkop
    Close Browser
authentificationko
    [Documentation]    login mot de passe et user invalide
    [Tags]     user_password_invalid
    openpage
    loginko
    Close Browser
Quitter
    [Documentation]    deconnexion de l'application
    [tags]       EXIT
    openpage
    Login
    deconnexion
    Close Browser
adduser
    [Documentation]    ajouter un utilisateur
    [Tags]    utilisateur
    openpage
    login
    ajoutuser
    Close Browser

Reset_recherche
    [Documentation]    reste des information d'un utilisateur
    [Tags]    res
    openpage
    login
    Reset
    Close Browser
Search
    [Documentation]    rechercher un utilisateur
    [Tags]   recherche
    openpage
    login
    Search_user
    Close Browser
Delete
    [Documentation]    supresion utilisateur
    [Tags]    supression
    openpage
    login
    suprimer
    Close Browser
    
 




    