*** Settings ***
Library  SeleniumLibrary
Library  String
Resource   ../../Resources/mainKeywords.robot
Resource   ../Resources/variables.robot


*** Test Cases ***
Pre-conditions
    Prepare Main Page


TC_006_003_001 - Reload
    Scroll Element Into View   ${Footer}
    Capture Page Screenshot   ${SaveTo}Logo_BeforeReload.png
    Click Element  ${Logo}
    Location Should Be  ${MainPage}
    Capture Page Screenshot   ${SaveTo}Logo_AfterReload.png


TC_006_003_001 - Presmerovani z podstranky skore
    Go To  https://www.nhl.com/scores


    Click Element  ${Logo}
    Location Should Be  ${MainPage}
    Capture Page Screenshot   ${SaveTo}Logo_Redirection.png


Post-conditions
    Close Browser