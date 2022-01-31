*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource   ../../GlobalResources/globalKeywords.robot
Resource   FBResources/fbVariables.robot

*** Test Cases ***
Pre-conditions
    Prepare Main Page  ${MainPage}  Chrome

TC_001_001_001-Allow cookies
    Wait Until Element Is Visible   ${Cookies}
    Click Element  ${Cookies}
    capture page screenshot   Screenshots/LoginPage.png

TC_001_001_002-Login
    Wait Until Element Is Visible   ${EmailInput}
    Input Text   ${EmailInput}   burdy8910@gmail.com
    Wait Until Element Is Visible   ${PasswordInput}
    Input Text   ${PasswordInput}   aaa123
    Click Element   ${LoginButton}

TC_001_001_003-Check navbar items
    Sleep  10
    Click Element   ${Market}
    Capture Page Screenshot   Screenshots/BeforeHoverStart.png
    FOR     ${Item}    IN     @{HeaderItems}
        Wait Until Element Is Visible  ${Item}
        Mouse Over   ${Item}
        Capture Page Screenshot   Screenshots/Hover${Item}.png
    END

# cannot handle next Test cases because of Cookies

Post-conditions
    Close Browser