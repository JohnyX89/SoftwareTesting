*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ProhlizecChrome}  Chrome
${MainPage}  https://www.nhl.com
${Dialog}   //*[@id="languageModal"]/div[2]/div/div[2]/button[2]
${Privacy}   //*[@id="homepage_index"]/section/button/i

${HeaderLanguage}   //a[@class='top-nav__primary__menu__item__link top-nav__primary__menu__item__link--language']
${CzechLanguage}    //a[@class='top-nav__secondary-section__menu__item__link top-nav__secondary-section__menu__item__link--language top-nav__secondary-section__menu__item__link--language--cs']

${SaveTo}  ../Screenshots/