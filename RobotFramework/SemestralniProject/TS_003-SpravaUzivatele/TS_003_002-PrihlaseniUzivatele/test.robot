*** Settings ***
Library  SeleniumLibrary
Resource   ../../Resources/mainKeywords.robot
Resource   ../Resources/variables.robot

*** Test Cases ***
Pre-conditions
    Prepare Main Page



TC_003_001 - Prihlaseni uzivatele s nekorektnimi udaji
    Mouse Over  ${PersonIcon}
    Check And Click  ${SignIn}

    Location Should Be  ${URL1}

    Input Text   ${LoginName}   a@b.cz
    Input Password   ${LoginPassword}   12345678
    Press Keys  ${LoginPassword}  ENTER

    Capture Page Screenshot  ${SaveTo}LoginPage_Incorrect.png


TC_003_002 - Prihlaseni uzivatele s korektnimi udaji
    Go To  ${URLNHL}

    Mouse Over  ${PersonIcon}
    Check And Click  ${SignIn}

    Location Should Be  ${URL1}

    :FOR   ${Element}    IN     @{LoginItems}
    \   Wait Until Element Is Visible  ${Element}

    Input Text   ${LoginName}   aaa@bbb.cz
    Input Password   ${LoginPassword}   12345678
    Press Keys  ${LoginButton}  ENTER


    Sleep  5
    Location Should Be  ${URLNHL}

    Mouse Over  ${PersonIcon}
    Check And Click  ${MyProfile}

    Location Should Be  ${URLMyProfile}

    Wait Until Element Is Visible   ${MyEmail}
    ${LoggedAs}=  Get Value  ${MyEmail}
    Should Be Equal As Strings   ${LoggedAs}   aaa@bbb.cz

    Capture Page Screenshot  ${SaveTo}LoginPage_Correct.png

Post-conditions
    Close Browser