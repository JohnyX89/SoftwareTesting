*** Settings ***
Library  SeleniumLibrary
Resource   globalVariables.robot


*** Keywords ***
Prepare Main Page
    [Arguments]   ${MainPage}   ${Browser}
    Open Browser   ${MainPage}   ${Browser}
    Maximize Browser Window


Check And Click
    [Arguments]     ${Item}   ${Name}
    Wait Until Element Is Visible   ${Item}
    Mouse Over   ${Item}
    Capture Page Screenshot   Screenshots/${Name}.png
    Click Element   ${Item}

Check And Scroll To
    [Arguments]     ${Item}
    wait until element is enabled  ${Item}
    scroll element into view  ${Item}

Screenshot During Hover
    [Arguments]     ${Item}    ${Name}
    Wait Until Element Is Visible  ${Item}
    Mouse Over   ${Item}
    Capture Page Screenshot   Screenshots/Hover${Name}.png


Log Text From
    [Arguments]     ${Item}
    ${SearchingText}=  Get Text   ${Item}
    Log  ${SearchingText}

Log Complex Info Of 2
    [Arguments]   ${Item01}  ${Item02}   ${Header}   ${Des01}  ${Des02}
    ${Text01}=  Get Text   ${Item01}
    ${Text02}=  Get Text   ${Item02}
    Log  ${Header}:_${Des01}=${Text01},_${Des02}=${Text02}
    Log To Console  ${Header}:_${Des01}=${Text01},_${Des02}=${Text02}


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