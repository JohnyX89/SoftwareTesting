*** Settings ***
Library  SeleniumLibrary
Resource   ../../../Resources/mainKeywords.robot
Resource   ../../Resources/variables.robot


*** Test Cases ***
Pre-conditions
    Prepare Main Page


TC_006_002_001_001 - AHL
    Scroll Element Into View  ${Footer}

    Check And Click   ${NetworkSites}
    Check And Click   ${AHLLink}

    Location Should Be  ${AHLSite}

    Execute javascript  document.body.style.zoom="70%"
    Capture Page Screenshot   ${SaveTo}AHL.png


TC_006_002_001_002 - ECHL
    Execute javascript  document.body.style.zoom="100%"
    Go To  ${MainPage}

    Scroll Element Into View  ${Footer}

    Check And Click   ${NetworkSites}
    Check And Click   ${ECHLLink}

    Location Should Be  ${ECHLSite}

    Execute javascript  document.body.style.zoom="70%"
    Capture Page Screenshot   ${SaveTo}ECHL.png



Post-conditions
    Close Browser