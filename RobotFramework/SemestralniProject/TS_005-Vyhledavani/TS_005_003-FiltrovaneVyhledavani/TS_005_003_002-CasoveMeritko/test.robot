*** Settings ***
Library  SeleniumLibrary
Library  String
Resource   ../../../Resources/mainKeywords.robot
Resource   ../../Resources/variables.robot


*** Test Cases ***
Pre-conditions
    Prepare Main Page


TC_005_003_002_001 - Past Day
    Check And Click  ${LoupIcon}
    Input Text   ${LoupText}  Pavel Bure
    ${LoupValue}=  Get Value  ${LoupText}
    Check And Click  ${LoupSearch}

    ${PlayerName}=  Evaluate   '${LoupValue}'.replace(' ','%20')
    Location Should Contain  ${PlayerName}

    Check And Click  ${Advanced}
    Check And Click  ${TimeButton}
    Check And Click  ${PastDay}

    Location Should Contain  day

    Execute javascript  document.body.style.zoom="70%"
    Capture Page Screenshot   ${SaveTo}Search_PastDay.png


TC_005_003_002_002 - Past Week
    Execute javascript  document.body.style.zoom="100%"

    Check And Click  ${TimeButton}
    Check And Click  ${PastWeek}

    Location Should Contain  week

    Execute javascript  document.body.style.zoom="70%"
    Capture Page Screenshot   ${SaveTo}Search_PastWeek.png


TC_005_003_002_003 - Past Month
    Execute javascript  document.body.style.zoom="100%"

    Check And Click  ${TimeButton}
    Check And Click  ${PastMonth}

    Location Should Contain  month

    Execute javascript  document.body.style.zoom="70%"
    Capture Page Screenshot   ${SaveTo}Search_PastMonth.png


TC_005_003_002_004 - Past Year
    Execute javascript  document.body.style.zoom="100%"

    Check And Click  ${TimeButton}
    Check And Click  ${PastYear}

    Location Should Contain  year

    Execute javascript  document.body.style.zoom="70%"
    Capture Page Screenshot   ${SaveTo}Search_PastYear.png



Post-conditions
    Close Browser