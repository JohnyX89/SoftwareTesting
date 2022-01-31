*** Settings ***
Library   SeleniumLibrary
Resource   variables.robot


*** Keywords ***
Make Screenshot During Hover
    [Arguments]     ${Item}     ${Name}
    Mouse Over   ${Item}
    Capture Page Screenshot   ${SaveTo}Hover${Name}.png
