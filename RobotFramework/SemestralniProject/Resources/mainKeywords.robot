*** Settings ***
Library  SeleniumLibrary
Resource   mainVariables.robot


*** Keywords ***
Prepare Main Page
    Open Browser  ${MainPage}  ${ProhlizecChrome}
    Maximize Browser Window
    Wait Until Element Is Visible  ${Dialog}
    Click Element   ${Dialog}
    Click Element   ${Privacy}


Check And Click
    [Arguments]     ${Item}
    Wait Until Element Is Visible   ${Item}
    Click Element   ${Item}


Log Text From
    [Arguments]     ${Item}
    ${SearchingText}=  Get Text   ${Item}
    Log  ${SearchingText}


Log URL
#   mozna jen Log Location

    ${CurrentURL}=  Get Location
    Log  ${CurrentURL}



Log URL And Close Browser
#   mozna jen Log Location

    ${CurrentURL}=  Get Location
    Log  ${CurrentURL}
    Sleep  1
    Close Browser