*** Settings ***
Library  SeleniumLibrary
Library    String
Resource   ../../Resources/mainKeywords.robot
Resource   ../Resources/variables.robot


*** Test Cases ***
Pre-conditions
    Prepare Main Page


TC_005_001 - Overeni funkcnosti tlacitka lupy pro vyhledavani
    Check And Click     ${LoupIcon}

    Input Text   ${LoupText}  Canada
    ${LoupValue}=  Get Value  ${LoupText}

    ${SearchingText}=  Get Text   ${LoupSearch}
    ${SearchingText}=  Remove String   ${SearchingText}   '  See all results for
    ${SearchingText}=  Evaluate   '${SearchingText}'.replace(' ','')

    Should Be Equal As Strings   ${SearchingText}  ${LoupValue}
    Capture Page Screenshot   ${SaveTo}SearchingText.png


Post-conditions
    Log URL And Close Browser