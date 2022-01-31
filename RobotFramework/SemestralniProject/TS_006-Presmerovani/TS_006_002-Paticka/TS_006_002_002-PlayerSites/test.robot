*** Settings ***
Library  SeleniumLibrary
Resource   ../../../Resources/mainKeywords.robot
Resource   ../../Resources/variables.robot


*** Test Cases ***
Pre-conditions
    Prepare Main Page


TC_006_002_002_001 - David Backes
    Scroll Element Into View  ${Footer}

    Check And Click   ${PlayerSites}
    Check And Click   ${BackesLink}

    Location Should Be  ${BackesSite}

    Execute javascript  document.body.style.zoom="70%"
    Capture Page Screenshot   ${SaveTo}DavidBackes.png


TC_006_002_002_002 - Alex Steen
    Execute javascript  document.body.style.zoom="100%"
    Go To  ${MainPage}

    Scroll Element Into View  ${Footer}

    Check And Click   ${PlayerSites}
    Check And Click   ${SteenLink}

    Location Should Be  ${SteenSite}

    Execute javascript  document.body.style.zoom="70%"
    Capture Page Screenshot   ${SaveTo}AlexSteen.png


TC_006_002_002_003 - Pavel Bure
    Execute javascript  document.body.style.zoom="100%"
    Go To  ${MainPage}

    Scroll Element Into View  ${Footer}

    Check And Click   ${PlayerSites}
    Check And Click   ${BureLink}

    Location Should Be  ${BureSite}

    Execute javascript  document.body.style.zoom="70%"
    Capture Page Screenshot   ${SaveTo}PavelBure.png



Post-conditions
    Close Browser