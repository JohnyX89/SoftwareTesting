*** Settings ***
Library  SeleniumLibrary
Resource   ../Resources/mainKeywords.robot
Resource   Resources/variables.robot


*** Test Cases ***
Pre-conditions
    Prepare Main Page


TC_002_001 - Zmena na cestinu proklikanim
    Mouse Over  ${HeaderLanguage}
    Click Element  ${CzechLanguage}

    Location Should Be  https://www.nhl.com/cs/
    Capture Page Screenshot   ${SaveTo}CzechPage.png


TC_002_002 - Zmena na slovencinu pres zmenu na nekorektni URL
    Go To  ${MainPage}


    ${BasicURL}=  Get Location
    ${FinalURL}=  Catenate  ${BasicURL}slovak/
    Go To  ${FinalURL}

    Capture Page Screenshot   ${SaveTo}IncorrectSlovakPage.png


TC_002_003 - Zmena na slovencinu pres zmenu na korektni URL
    Go to   ${MainPage}

    ${BasicURL}=  Get Location
    ${FinalURL}=  Catenate  ${BasicURL}sk/
    Go To  ${FinalURL}

    Location Should Be  https://www.nhl.com/sk/
    Capture Page Screenshot   ${SaveTo}CorrectSlovakPage.png


Post-conditions
    Close Browser