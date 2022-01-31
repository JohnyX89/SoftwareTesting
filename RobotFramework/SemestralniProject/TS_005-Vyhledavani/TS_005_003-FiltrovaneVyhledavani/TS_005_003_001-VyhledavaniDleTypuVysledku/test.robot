*** Settings ***
Library  SeleniumLibrary
Library  String
Resource   ../../../Resources/mainKeywords.robot
Resource   ../../Resources/variables.robot


*** Test Cases ***
Pre-conditions
    Prepare Main Page


TC_005_003_001_001 - Vyhledavani v clancich
    Check And Click     ${LoupIcon}
    Input Text   ${LoupText}  Erik Karlsson
    ${LoupValue}=  Get Value  ${LoupText}
    Check And Click  ${LoupSearch}

    ${PlayerName}=  Evaluate   '${LoupValue}'.replace(' ','%20')
    Location Should Contain  ${PlayerName}
    Check And Click  ${SearchedArticles}

    Location Should Contain  article

    Execute javascript  document.body.style.zoom="70%"
    ${LoupValue}=  Evaluate   '${LoupValue}'.replace(' ','')
    Capture Page Screenshot   ${SaveTo}Search_Article_${LoupValue}.png


TC_005_003_001_002 - Vyhledavani ve videich
    Execute javascript  document.body.style.zoom="70%"
    Go to  ${MainPage}

    Check And Click    ${LoupIcon}
    Input Text   ${LoupText}  Sidney Crosby
    ${LoupValue}=  Get Value  ${LoupText}
    Check And Click  ${LoupSearch}

    ${PlayerName}=  Evaluate   '${LoupValue}'.replace(' ','%20')
    Location Should Contain  ${PlayerName}
    Check And Click  ${SearchedVideos}

    Location Should Contain  video

    Execute javascript  document.body.style.zoom="70%"
    ${LoupValue}=  Evaluate   '${LoupValue}'.replace(' ','')
    Capture Page Screenshot   ${SaveTo}Search_Video_${LoupValue}.png


Post-conditions
    Close Browser