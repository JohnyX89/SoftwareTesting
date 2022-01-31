*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource   ../Resources/variables.robot
Resource   ../Resources/keywords.robot





*** Variables ***
${CommunicableDisease}  //*[@id="c49"]/div[1]/span[1]
${Flu}  //*[@id="flu"]/div[1]/span[1]
${Children}  //*[@id="c50"]/div[1]/span[1]
${Abortitions}  //*[@id="c51"]/div[1]/span[1]
${Mothers}  //*[@id="c52"]/div[1]/span[1]

${HIVInfected}  //*[@id="c53"]/div[1]/span[1]
${HIVDeaths}  //*[@id="c54"]/div[1]/span[1]
${Cancer}  //*[@id="c55"]/div[1]/span[1]
${Malaria}  //*[@id="c56"]/div[1]/span[1]
${CigarettesSmoked}  //*[@id="c57"]/div[1]/span[1]

${DeathBySmoking}  //*[@id="c58"]/div[1]/span[1]
${Alcohol}  //*[@id="c59"]/div[1]/span[1]
${Suicides}  //*[@id="c60"]/div[1]/span[1]
${IllegallDrugs}  //*[@id="c61"]/div[1]/span[1]
${RoadTraffic}  //*[@id="c62"]/div[1]/span[1]


## 15 elements to check
#${CommunicableDisease}  //*[@id="c49"]/div[1]/span[1]
#${Flu}  //*[@id="flu"]
##${FluByText}  //*[@id="flu"]/div[1]/span[2]/span
##${Children}  //*[@id="c50"]
#${Abortitions}  //*[@id="c51"]/div[1]
##${Mothers}      //*[@id="c52"]/div[1]
##
##${HIVInfected}  //*[@id="c53"]/div[1]
##${HIVDeaths}  //*[@id="c54"]/div[1]
##${Cancer}  //*[@id="c55"]/div[1]
##${Malaria}  //*[@id="c56"]/div[1]
#${CigarettesSmoked}  //*[@id="c57"]/div[1]
##
##${DeathBySmoking}  //*[@id="c58"]/div[1]
##${Alcohol}  //*[@id="c59"]/div[1]
##${Suicides}  //*[@id="c60"]/div[1]
##${IllegallDrugs}  //*[@id="c61"]/div[1]
##${RoadTraffic}  //*[@id="c62"]/div[1]
##
##
### 15 number elements to check
##${CommunicableDiseaseNumber}  //*[@id="c49"]/div[1]/span[1]/span
#${FluNumber}  //*[@id="flu"]/div[1]/span[1]/span
##${ChildrenNumber}  //*[@id="c50"]/div[1]/span[1]/span
##${AbortitionsNumber}  //*[@id="c51"]/div[1]/span[1]/span
##${MothersNumber}      //*[@id="c52"]/div[1]/span[1]/span
##
##${HIVInfectedNumber}  //*[@id="c53"]/div[1]/span[1]/span
##${HIVDeathsNumber}  //*[@id="c54"]/div[1]/span[1]/span
##${CancerNumber}  //*[@id="c55"]/div[1]/span[1]/span
##${MalariaNumber}  //*[@id="c56"]/div[1]/span[1]/span
##${CigarettesSmokedNumber}  //*[@id="c57"]/div[1]/span[1]/span
##
##${DeathBySmokingNumber}  //*[@id="c58"]/div[1]/span[1]/span
##${AlcoholNumber}  //*[@id="c59"]/div[1]/span[1]/span
##${SuicidesNumber}  //*[@id="c60"]/div[1]/span[1]/span
##${IllegallDrugsNumber}  //*[@id="c61"]/div[1]/span[1]/span
##${RoadTrafficNumber}  //*[@id="c62"]/div[1]/span[1]/span
##
##
#@{HealthNumbersList}   //*[@id="c49"]/div[1]/span[1]/span   //*[@id="flu"]/div[1]/span[1]/span    //*[@id="c50"]/div[1]/span[1]/span  //*[@id="c51"]/div[1]/span[1]/span   //*[@id="c52"]/div[1]/span[1]/span           //*[@id="c53"]/div[1]/span[1]/span  //*[@id="c54"]/div[1]/span[1]/span  //*[@id="c55"]/div[1]/span[1]/span  //*[@id="c56"]/div[1]/span[1]/span  //*[@id="c57"]/div[1]/span[1]/span          //*[@id="c58"]/div[1]/span[1]/span   //*[@id="c59"]/div[1]/span[1]/span     //*[@id="c60"]/div[1]/span[1]/span      //*[@id="c61"]/div[1]/span[1]/span   //*[@id="c62"]/div[1]/span[1]/span
@{HealthNumbersList}   //*[@id="c49"]/div[1]/span[1]   //*[@id="flu"]/div[1]/span[1]    //*[@id="c50"]/div[1]/span[1]  //*[@id="c51"]/div[1]/span[1]   //*[@id="c52"]/div[1]/span[1]            //*[@id="c53"]/div[1]/span[1]    //*[@id="c54"]/div[1]/span[1]   //*[@id="c55"]/div[1]/span[1]   //*[@id="c56"]/div[1]/span[1]   //*[@id="c57"]/div[1]/span[1]         //*[@id="c58"]/div[1]/span[1]   //*[@id="c59"]/div[1]/span[1]    //*[@id="c60"]/div[1]/span[1]    //*[@id="c61"]/div[1]/span[1]   //*[@id="c62"]/div[1]/span[1]
&{array}    firstElement=//*[@id="c49"]/div[1]/span[1]   secondElement=//*[@id="flu"]/div[1]/span[1]


# or type variables to external file and then attach by: "Resource {file}"


*** Test Cases ***
Pre-conditions
    Open Browser  ${MainPage}  ${ProhlizecChrome}

    :FOR   ${Element}    IN     @{HealthNumbersList}
    \   Wait Until Element Is Visible  ${Element}


TC_001 - Screenshot "Season flu deaths"
#    Wait Until Element Is Visible  ${FluByText}
    Scroll Element Into View    ${CigarettesSmoked}
    Click Element   ${Flu}
    Capture Page Screenshot   openFluScreen.png


TC_002 - Log statistics of "Health"
#    :FOR   ${Stat}    IN     @{HealthNumbersList}
#    \   ${Number}=  Get Text  ${Stat}
#    \   Log To Console  ${Number}
#    \   Log  ${Number}

    ${CommunicableDiseaseStat}=  Get Text  ${CommunicableDisease}
    Log  ${CommunicableDiseaseStat}

    ${FluStat}=  Get Text  ${Flu}
    Log  ${FluStat}

    ${ChildrenStat}=  Get Text  ${Children}
    Log  ${ChildrenStat}

    ${AbortitionsStat}=  Get Text  ${Abortitions}
    Log  ${AbortitionsStat}

    ${MothersStat}=  Get Text  ${Mothers}
    Log  ${MothersStat}

    ${HIVInfectedStat}=  Get Text  ${HIVInfected}
    Log  ${HIVInfectedStat}

    ${HIVDeathsStat}=  Get Text  ${HIVDeaths}
    Log  ${HIVDeathsStat}

    ${CancerStat}=  Get Text  ${Cancer}
    Log  ${CancerStat}

    ${MalariaStat}=  Get Text  ${Malaria}
    Log  ${MalariaStat}

    ${CigarettesSmokedStat}=  Get Text  ${CigarettesSmoked}
    Log  ${CigarettesSmokedStat}

    ${DeathBySmokingStat}=  Get Text  ${DeathBySmoking}
    Log  ${DeathBySmokingStat}

    ${AlcoholStat}=  Get Text  ${Alcohol}
    Log  ${AlcoholStat}

    ${SuicidesStat}=  Get Text  ${Suicides}
    Log  ${SuicidesStat}

    ${IllegallDrugsStat}=  Get Text  ${IllegallDrugs}
    Log  ${IllegallDrugsStat}

    ${RoadTrafficStat}=  Get Text  ${RoadTraffic}
    Log  ${RoadTrafficStat}


Post-conditions
    ${TestDiseases}=  Get Location
    Log  ${TestDiseases}
    Sleep  2
    Close Browser