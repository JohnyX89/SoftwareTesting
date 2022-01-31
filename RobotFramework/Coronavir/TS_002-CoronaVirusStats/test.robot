*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource   ../Resources/variables.robot
Resource   ../Resources/keywords.robot


*** Variables ***
${LastDiv}   //*[@id="c62"]
${CoronavirusSite}   //*[@id="navbar-main"]/ul/li[1]/a/span
${ItalyDetail}      //*[@id="main_table_countries_today"]/tbody[1]/tr[2]/td[1]/a



*** Test Cases ***
Pre-conditions
    Set Selenium Speed  0.2


TC_001 - Zkontroluj načtení stránky
    Otevri Prohlizec Na Dane URL A Zkontroluj  ${MainPage}  ${ProhlizecChrome}  ${LastDiv}


TC_002 - Najdi počet nakažených Coronavirusem v zemi
    Zaloguj Počet Nakazenych V Zemi    Italy

TC_003 - Najdi počet nakažených Coronavirusem v zemi X
    Zaloguj Počet Nakazenych V ZemiX     US



Post-conditions
    ${TestCoronavirus}=  Get Location
    Log  ${TestCoronavirus}
    Sleep  2
    Close Browser