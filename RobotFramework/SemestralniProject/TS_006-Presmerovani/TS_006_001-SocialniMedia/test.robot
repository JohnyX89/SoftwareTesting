*** Settings ***
Library  SeleniumLibrary
Resource   ../../Resources/mainKeywords.robot
Resource   ../Resources/variables.robot


*** Test Cases ***
Pre-conditions
    Prepare Main Page


TC_006_001_001 - Twitter NHL
    Check And Click   ${TwitterLink}

    Location Should Be  ${TwitterURL}

    Execute javascript  document.body.style.zoom="70%"
    Capture Page Screenshot   ${SaveTo}Twitter.png


TC_006_001_002 - Facebook NHL
    Execute javascript  document.body.style.zoom="100%"
    Go To  ${MainPage}
    Check And Click   ${FacebookLink}

    Location Should Be  ${FacebookURL}

    Execute javascript  document.body.style.zoom="70%"
    Capture Page Screenshot   ${SaveTo}Facebook.png


TC_006_001_003 - Instagram NHL
    Execute javascript  document.body.style.zoom="100%"
    Go To  ${MainPage}
    Check And Click   ${InstagramLink}

    Location Should Be  ${InstagramURL}

    Execute javascript  document.body.style.zoom="70%"
    Capture Page Screenshot   ${SaveTo}Instagram.png


TC_006_001_004 - Youtube NHL
    Execute javascript  document.body.style.zoom="100%"
    Go To  ${MainPage}
    Check And Click   ${YoutubeLink}

    Location Should Be  ${YoutubeURL}

    Execute javascript  document.body.style.zoom="70%"
    Capture Page Screenshot   ${SaveTo}Youtube.png


TC_006_001_005 - Snapchat NHL
    Execute javascript  document.body.style.zoom="100%"
    Go To  ${MainPage}
    Check And Click   ${SnapchatLink}

    Location Should Be  ${SnapchatURL}

    Execute javascript  document.body.style.zoom="70%"
    Capture Page Screenshot   ${SaveTo}Snapchat.png


Post-conditions
    Close Browser