*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource   ../../GlobalResources/globalKeywords.robot

Resource   LaracastsVariables.robot

*** Test Cases ***
Pre-conditions
    Set Selenium Speed  0.1
    Prepare Main Page  ${MainPage}  Chrome

TC_002_002_001-Check navbar items
    FOR   ${Element}    IN     @{MainElements}
        Wait Until Element Is Enabled  ${Element}
    END
    Capture Page Screenshot   Screenshots/MainPage.png

TC_002_002_002-Show sign in
    click element  ${NavbarSignIn}
    wait until element is visible   ${SignInInput}
    Capture Page Screenshot   Screenshots/SignIn.png

TC_002_002_003-Close sign in
    wait until element is visible  ${SignInBack}
    click element  ${SignInBack}

TC_002_002_004-Check main stats
    scroll element into view   ${HeaderUnderStats}
    Screenshot During Hover  ${FWSerNumber}  Frameworks
    Screenshot During Hover  ${LangSerNumber}  Languages
    Screenshot During Hover  ${TechSerNumber}  Techniques

TC_002_002_005-Log main stats
    scroll element into view   ${HeaderUnderStats}
    Log Complex Info Of 2  ${FWSerNumber}  ${FWVidNumber}  Frameworks  series  videos
    Log Complex Info Of 2  ${LangSerNumber}  ${LangVidNumber}  Languages  series  videos
    Log Complex Info Of 2  ${TechSerNumber}  ${TechVidNumber}  Techniques  series  videos

TC_002_002_006-Redirect to Laravel Course
    scroll element into view  ${LaravelCourse}
    click element  ${LaravelCourseGoto}
    wait until element is visible  ${LaravelPageMenu}
    location should contain  laravel
    capture page screenshot  Screenshots/LaravelCourseMenu.png

TC_002_002_007-Play Laravel Course
    click element  ${LaravelCoursePlay}
    wait until element is visible  ${LaravelCourseVideo}
    capture page screenshot  Screenshots/LaravelCourseVideoStart.png
    sleep   5
    mouse over  ${LaravelCourseVideo}
    capture page screenshot  Screenshots/LaravelCourseVideoLater.png

TC_002_002_008-Redirect to main page by logo in navbar
    click element  ${Logo}
    location should be   https://laracasts.com/

TC_002_002_009-Show finder
    wait until element is visible  ${NavbarFinder}
    click element  ${NavbarFinder}
    capture page screenshot  Screenshots/Finder.png

TC_002_002_010-Search whisper results for Vue
    input text   ${FinderInput}   Vue
    capture page screenshot  Screenshots/FinderWhisper.png

TC_002_002_011-Search Vue
    press keys   ${FinderInput}   ENTER
    wait until element is visible   ${SearchPageViewMore}
    capture page screenshot  Screenshots/SearchedVue.png

TC_002_002_012-Search-Show more of the side menu
    check and scroll to   ${SearchPageViewMore}
    click element  ${SearchPageViewMore}
    sleep  0.5
    capture page screenshot  Screenshots/SearchPageViewMore.png

TC_002_002_013-Redirect to course "Build a client app using Vue"
    scroll element into view  ${BuildAClientCourse}
    click element   ${BuildAClientCourse}
    location should be  https://laracasts.com/series/playing-with-php/episodes/2

TC_002_002_014-Redirect to Twitter profile by footer logo
    wait until element is enabled   ${Twitter}
    scroll element into view  ${Twitter}
    click element  ${Twitter}
    ${handles}=    Get Window Handles
    Switch Window    ${handles}[1]
    capture page screenshot  Screenshots/TwitterPage.png

Post-conditions
    Close Browser