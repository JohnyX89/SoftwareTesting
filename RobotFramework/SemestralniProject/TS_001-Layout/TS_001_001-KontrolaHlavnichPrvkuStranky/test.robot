*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource   ../../Resources/mainKeywords.robot
Resource   Resources/variables.robot

*** Test Cases ***
Pre-conditions
    Prepare Main Page


TC_001_001_001 – Kontrola loga, hlavicky, hlavniho clanku a paticky
    :FOR   ${Element}    IN     @{MainElements}
    \   Wait Until Element Is Visible  ${Element}

    Capture Page Screenshot   ${SaveTo}LogoHeaderArticle.png

    Scroll Element Into View    ${Footer}
    Capture Page Screenshot   ${SaveTo}Footer.png

Post-conditions
    Close Browser