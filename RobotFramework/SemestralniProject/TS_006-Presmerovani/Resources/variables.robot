*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${NetworkSites}     //div[@class='site-footer__links-container']//div[1]//div[1]
${PlayerSites}     //footer[@class='site-footer']//div[2]//div[1]


${AHLLink}   //a[contains(text(),'AHL')]
${AHLSite}   https://theahl.com/

${ECHLLink}   //a[contains(text(),'ECHL')]
${ECHLSite}   https://www.echl.com/

${BackesLink}   //a[contains(text(),'David Backes')]
${BackesSite}   http://www.davidbackes.com/

${SteenLink}    //a[contains(text(),'Alex Steen')]
${SteenSite}    http://steen20.com/

${BureLink}    //a[contains(text(),'Pavel Bure (Ret.)')]
${BureSite}    https://pavelbure.net/

${Footer}   //p[@class='site-footer__colophon']


${Logo}   //img[@class='logo top-nav__nhl-logo__img']



${SaveTo}  ../Screenshots/
