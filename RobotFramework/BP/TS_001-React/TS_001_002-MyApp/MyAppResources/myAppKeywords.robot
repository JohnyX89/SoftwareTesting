*** Settings ***
Library  SeleniumLibrary
Resource   myAppVariables.robot


*** Keywords ***
Open Main Page
    Open Browser  ${MainPage}  ${ProhlizecChrome}
    Maximize Browser Window



