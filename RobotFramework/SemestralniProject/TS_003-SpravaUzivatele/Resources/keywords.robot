*** Settings ***
Library  SeleniumLibrary
Resource   variables.robot


*** Keywords ***
Fill Whole Form
    [Arguments]     ${FillEmail}    ${FillFirstName}    ${FillLastName}   ${FillPassword}   ${FillConfirmPassword}   ${FillPostalCode}
    Input Text   ${Email}   ${FillEmail}
    Input Text   ${FirstName}   ${FillFirstName}
    Input Text   ${LastName}   ${FillLastName}
    Input Password   ${Password}   ${FillPassword}
    Input Password   ${ConfirmPassword}   ${FillConfirmPassword}

    Click Element  ${CountryMenu}
    Click Element  ${CountrySelect}

    Input Text   ${PostalCode}   ${FillPostalCode}

    Click Element  ${TeamMenu}
    Click Element  ${TeamSelect}

    Click Button   ${RegisterButton}
