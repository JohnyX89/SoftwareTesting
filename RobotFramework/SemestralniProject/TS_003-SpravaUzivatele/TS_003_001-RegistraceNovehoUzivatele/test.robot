*** Settings ***
Library  SeleniumLibrary
Resource   ../../Resources/mainKeywords.robot
Resource   ../Resources/variables.robot
Resource   ../Resources/keywords.robot

*** Test Cases ***
Pre-conditions
    Prepare Main Page

TC_003_001_001 - Registrace noveho uzivatele s nevyplnenymi udaji
    Mouse Over  ${PersonIcon}
    Check And Click  ${SignIn}

    Location Should Be  ${URL1}

    Check And Click  ${SignUp}

    Location Should Be  ${URL2}

    :FOR   ${Element}    IN     @{FormInputs}
    \   Wait Until Element Is Visible  ${Element}

    Click Button   ${RegisterButton}

    Execute javascript  document.body.style.zoom="70%"
    Capture Page Screenshot   ${SaveTo}SignInPage_NoValues.png
    Execute javascript  document.body.style.zoom="100%"


TC_003_001_002 - Registrace noveho uzivatele s nekorektnim emailem
    Fill Whole Form  aaa.cz  Jan  Bures  12345678  12345678  85001

    Scroll Element Into View    ${Password}
    Execute javascript  document.body.style.zoom="70%"
    Capture Page Screenshot   ${SaveTo}SignInPage_WrongEmail.png
    Execute javascript  document.body.style.zoom="100%"


    # simulate post-condition: Clear inputs (for next TC)
    Reload Page

TC_003_001_003 - Registrace noveho uzivatele s odlisnymi hesly
    Fill Whole Form  aaa@bbb.cz  Jan  Bures  12345678  87654321  85001

    Scroll Element Into View    ${Password}
    Execute javascript  document.body.style.zoom="70%"
    Capture Page Screenshot   ${SaveTo}SignInPage_NotSamePasswords.png
    Execute javascript  document.body.style.zoom="100%"

    Reload Page


TC_003_001_004 - Registrace noveho uzivatele s korektnimi udaji
    Fill Whole Form  aaa@bbb.cz  Jan  Bures  12345678  12345678  85001

    Capture Page Screenshot   ${SaveTo}SignInPage_CorrectRegister.png


Post-conditions
    Close Browser