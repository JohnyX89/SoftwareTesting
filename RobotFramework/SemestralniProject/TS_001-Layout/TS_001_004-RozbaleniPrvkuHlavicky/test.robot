*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource   ../../Resources/mainKeywords.robot
Resource   Resources/variables.robot
Resource   Resources/keywords.robot

*** Test Cases ***
Pre-conditions
    Prepare Main Page

TC_001_003_001 - Rozbaleni menu "News"
    Make Screenshot During Hover   ${HeaderNews}   News

TC_001_003_002 - Rozbaleni menu "Video"
    Make Screenshot During Hover    ${HeaderVideo}   Video

TC_001_003_003 - Rozbaleni menu "Standings"
    Make Screenshot During Hover    ${HeaderStandings}   Standings

TC_001_003_004 - Rozbaleni menu "Stats"
    Make Screenshot During Hover    ${HeaderStats}   Stats

TC_001_003_005 - Rozbaleni menu "Schedule"
    Make Screenshot During Hover    ${HeaderSchedule}   Schedule

TC_001_003_006 - Rozbaleni menu "Players"
    Make Screenshot During Hover    ${HeaderPlayers}   Players

TC_001_003_007 - Rozbaleni menu "Tickets"
    Make Screenshot During Hover    ${HeaderTickets}   Tickets

TC_001_003_008 - Rozbaleni menu "Fantasy"
    Make Screenshot During Hover    ${HeaderFantasy}   Fantasy

TC_001_003_009 - Rozbaleni menu "Shop"
    Make Screenshot During Hover    ${HeaderShop}   Shop

TC_001_003_010 - Rozbaleni menu "Teams"
    Make Screenshot During Hover    ${HeaderTeams}   Teams

TC_001_003_011 - Rozbaleni menu "NHL.TV"
    Make Screenshot During Hover    ${HeaderNHLTV}   NHLTV


Post-conditions
    Close Browser