*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource   ../../GlobalResources/globalKeywords.robot
Resource   PrezmanVariables.robot


*** Test Cases ***
Pre-conditions
    Set Selenium Speed  0.1
    Prepare Main Page  ${MainPage}  Chrome

TC_002_002_001-Check logo and main header
    wait until element is visible  ${NavbarAgence}
    wait until element is visible  ${MainImage}
    capture page screenshot   Screenshots/mainPage.png

TC_002_002_002-Check navbar items
    screenshot during hover   ${NavbarRelations}   NavbarRelations
    screenshot during hover   ${NavbarAgence}   NavbarAgence
    screenshot during hover   ${NavbarOffers}   NavbarOffers
    screenshot during hover   ${NavbarReferences}   NavbarReferences
    screenshot during hover   ${NavbarPlus}   NavbarPlus

TC_002_002_003-Check Main page main image
    screenshot during hover   ${MainImage}   MainImage
    click element   ${MainImage}

TC_002_002_004-Start carousel
    click element  ${MainImage}
    capture page screenshot   Screenshots/CarouselStart.png

TC_002_002_005-Carousel switch to next item
    wait until element is enabled  ${CarouselNext}
    click element  ${CarouselNext}
    capture page screenshot   Screenshots/CarouselNext.png

TC_002_002_006-Carousel switch to previous item
    click element  ${CarouselPrevious}
    capture page screenshot   Screenshots/CarouselPrevious.png

TC_002_002_007-Redirect by carousel item
    click element  ${CarouselNext}
    sleep  1
    click element  ${CarouselNext}
    wait until element is enabled   ${CarouselThirdItem}
    click element  ${CarouselThirdItem}

TC_002_002_008-Play video
    check and scroll to  ${CarouselItemPageVideo}
    ${Horizont}=  get horizontal position  ${CarouselItemPageHeaderBelowVideo}
    execute javascript   window.scrollTo(0, ${Horizont}+100)
    screenshot during hover   ${CarouselItemPageVideo}   VideoStart
    click element   ${CarouselItemPageVideo}
    sleep  5
    capture page screenshot   Screenshots/VideoPlaying.png

TC_002_002_009-Go back by back button
    click element   ${BackToCarousel}
    wait until element is visible  ${CarouselThirdItem}

TC_002_002_010-Redirect to Agence by navbar
    click element   ${NavbarAgence}
    wait until element is enabled  ${ContentStrategyPar}
    location should contain  agence

TC_002_002_011-Log text from Content strategy paragraph
    check and scroll to  ${ContentStrategyPar}
    capture page screenshot   Screenshots/PenParagraph.png
    Log Text From  ${ContentStrategyPar}

TC_002_002_012-Scroll top by Up button
    screenshot during hover  ${GoUpBtn}  agencePageScrollTop
    click element  ${GoUpBtn}
    element should be enabled   ${GoUpResultDiv}
    capture page screenshot  Screenshots/agencePageScrollTopResult.png

TC_002_002_013-Search
    go to   https://www.prezman.fr/blog/
    check and click  ${BlogFinder}   Finder
    click element   ${BlogFinderInput}
    input text   ${BlogFinderInput}  lights
    click element  ${BlogSearch}
    check and scroll to   ${BlogSrollTo}
    capture page screenshot  Screenshots/BlogSearhLights.png

TC_002_002_014-Redirect to Main page by logo
    scroll element into view   ${NavbarLogo}
    click element   ${NavbarLogo}
    location should be   ${MainPage}

TC_002_002_015-Redirect to LinkedIn
    go to   https://www.prezman.fr/offres
    check and scroll to  ${BelowLinkedIn}
    screenshot during hover  ${LinkedInLink}  LinkedInLink
    click element   ${LinkedInLink}
    sleep  3
    ${handles}=    Get Window Handles
    Switch Window    ${handles}[1]
    location should contain    linkedin
    capture page screenshot   Screenshots/LinkedInPage.png

Post-conditions
    Close Browser