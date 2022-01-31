*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${HeaderNews}   //a[@class='top-nav__primary__menu__item__link top-nav__primary__menu__item__link--news']
${HeaderVideo}   //a[@class='top-nav__primary__menu__item__link top-nav__primary__menu__item__link--video']
${HeaderStandings}   //a[@class='top-nav__primary__menu__item__link top-nav__primary__menu__item__link--standings']
${HeaderStats}   //a[@class='top-nav__primary__menu__item__link top-nav__primary__menu__item__link--stats']
${HeaderSchedule}   //a[@class='top-nav__primary__menu__item__link top-nav__primary__menu__item__link--schedule']
${HeaderPlayers}   //a[@class='top-nav__primary__menu__item__link top-nav__primary__menu__item__link--players']
${HeaderTickets}   //a[@class='top-nav__primary__menu__item__link top-nav__primary__menu__item__link--tickets']
${HeaderFantasy}   //a[@class='top-nav__primary__menu__item__link top-nav__primary__menu__item__link--fantasy']
${HeaderShop}   //a[@class='top-nav__primary__menu__item__link top-nav__primary__menu__item__link--shop']
${HeaderTeams}   //a[@class='top-nav__primary__menu__item__link top-nav__primary__menu__item__link--teams']
${HeaderNHLTV}   //a[@class='top-nav__primary__menu__item__link top-nav__primary__menu__item__link--nhltv']

${SaveTo}  ../Screenshots/