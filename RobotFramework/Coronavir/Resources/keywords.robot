*** Settings ***
Library  DateTime
Library  SeleniumLibrary
Resource   ../Resources/variables.robot



*** Keywords ***
Otevri Prohlizec Na Dane URL A Zkontroluj
    [Arguments]   ${URL}   ${Browser}   ${KontrolovanaXPath}
    Open Browser  ${URL}  ${Browser}
    Wait Until Element Is Visible  ${KontrolovanaXPath}


#FUNGUJE, ALE NATVRDO
Zaloguj Počet Nakazenych V Zemi
    [Arguments]     ${Zeme}
    Wait Until Element Is Visible   ${CoronavirusSite}
    Click Element   ${CoronavirusSite}

    Wait Until Page Contains   ${ItalyDetail}
    Click Element   ${ItalyDetail}

    ${CasesInCountry}=  Get Text  ${Cases}
    Log To Console  ${CasesInCountry}
    Log  ${CasesInCountry}

    Execute javascript  document.body.style.zoom="50%"
    Capture Page Screenshot    natvrdo.png



Zaloguj Počet Nakazenych V ZemiX
    [Arguments]     ${ZemeX}
    Go To  https://www.worldometers.info/coronavirus/country/${ZemeX}
    ${CasesInCountryX}=  Get Text  ${CasesCountry}
    Log To Console  ${CasesInCountryX}
    Log  ${CasesInCountryX}

    Execute javascript  document.body.style.zoom="50%"
    Capture Page Screenshot   ${ZemeX}_statistics.png

    ${Datum}    Get Current Date
    ${ScreenFormat}    Convert Date    ${Datum}   result_format=${ZemeX}_%Y-%m-%d_%H-%M-%S_statistics
    Capture Page Screenshot   ${ScreenFormat}.png



