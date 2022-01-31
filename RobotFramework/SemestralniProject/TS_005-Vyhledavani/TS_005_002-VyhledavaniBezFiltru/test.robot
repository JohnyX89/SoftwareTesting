*** Settings ***
Library  SeleniumLibrary
Library  String
Resource   ../../Resources/mainKeywords.robot
Resource   ../Resources/variables.robot


*** Test Cases ***
Pre-conditions
    Prepare Main Page


TC_005_001 - Vyhledavani pres kliknuti mysi
    Check And Click     ${LoupIcon}
    Input Text   ${LoupText}  USA
    ${LoupValue}=  Get Value  ${LoupText}

    Check And Click  ${LoupSearch}

    Location Should Contain  ${LoupValue}
    Wait Until Element Is Visible  ${SearchedLabel}

    Execute javascript  document.body.style.zoom="70%"
    Capture Page Screenshot   ${SaveTo}Search_Basic_MouseClick_${LoupValue}.png


TC_005_002 - Vyhledavani pres ENTER
    Execute javascript  document.body.style.zoom="100%"
    Go To  ${MainPage}


    Check And Click     ${LoupIcon}
    Input Text   ${LoupText}  Canada
    ${LoupValue}=  Get Value  ${LoupText}

    Press Keys  ${LoupSearch}   ENTER

    Location Should Contain  ${LoupValue}
    Wait Until Element Is Visible  ${SearchedLabel}

    Execute javascript  document.body.style.zoom="70%"
    Capture Page Screenshot   ${SaveTo}Search_Basic_ENTER_${LoupValue}.png


TC_005_003 - Vyhledavani konkretniho hrace NHL
    Execute javascript  document.body.style.zoom="100%"
    Go To  ${MainPage}


    Check And Click    ${LoupIcon}
    Input Text   ${LoupText}   Brad Marchand
    ${LoupValue}=  Get Value  ${LoupText}

    Check And Click  ${LoupPlayer}

    ${PlayerName}=  Convert To Lower Case   ${LoupValue}
    ${PlayerName}=  Evaluate   '${PlayerName}'.replace(' ','-')
    Location Should Contain  ${PlayerName}

    Wait Until Element Is Visible  ${PlayerStats}

    Execute javascript  document.body.style.zoom="40%"
    ${LoupValue}=  Evaluate   '${LoupValue}'.replace(' ','')
    Capture Page Screenshot   ${SaveTo}Search_Basic_${LoupValue}.png

Post-conditions
    Close Browser