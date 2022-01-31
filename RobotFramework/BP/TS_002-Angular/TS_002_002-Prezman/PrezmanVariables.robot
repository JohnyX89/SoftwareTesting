*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${MainPage}  https://www.prezman.fr/
${ProhlizecChrome}  Chrome

${NavbarLogo}   //body[1]/div[3]/div[1]/header[1]/div[1]/div[1]/a[1]/img[1]

${NavbarRelations}   //body[1]/app-root[1]/div[1]/app-main-nav[1]/div[1]/div[1]/div[2]/nav[1]/ul[1]/li[1]/a[1]
${NavbarAgence}   //body/app-root[1]/div[1]/app-main-nav[1]/div[1]/div[1]/div[2]/nav[1]/ul[1]/li[2]
${NavbarOffers}   //body[1]/app-root[1]/div[1]/app-main-nav[1]/div[1]/div[1]/div[2]/nav[1]/ul[1]/li[3]/a[1]
${NavbarReferences}   //body[1]/app-root[1]/div[1]/app-main-nav[1]/div[1]/div[1]/div[2]/nav[1]/ul[1]/li[4]/a[1]
${NavbarPlus}   //body/app-root[1]/div[1]/app-main-nav[1]/div[1]/div[1]/div[2]/nav[1]/ul[1]/li[5]/div[1]

${MainImage}  //body/app-root[1]/div[1]

${CarouselNext}   //body/app-root[1]/div[1]/main[1]/app-use-case[1]/div[1]/div[1]/div[2]/div[1]/div[1]/slider-usecases[1]/div[1]/div[1]/div[1]/div[2]
${CarouselPrevious}   //body/app-root[1]/div[1]/main[1]/app-use-case[1]/div[1]/div[1]/div[2]/div[1]/div[1]/slider-usecases[1]/div[1]/div[1]/div[1]/div[3]
${CarouselThirdItem}   //body/app-root[1]/div[1]/main[1]/app-use-case[1]/div[1]/div[1]/div[2]/div[1]/div[1]/slider-usecases[1]/div[1]/div[1]/div[1]/div[1]/div[6]/div[2]/div[1]/a[1]/span[3]

${CarouselItemPageVideo}    //body/app-root[1]/div[1]/main[1]/app-google[1]/use-case-view[1]/div[1]/section[1]/div[1]/div[4]/div[2]/div[1]/div[1]
${CarouselItemPageHeaderBelowVideo}   //body/app-root[1]/div[1]/main[1]/app-google[1]/use-case-view[1]/div[1]/section[2]/div[1]/div[1]
${BackToCarousel}   //body[1]/app-root[1]/div[1]/main[1]/app-google[1]/use-case-view[1]/div[1]/button-usecase-back[1]/a[1]/span[1]/span[2]

${ContentStrategyPar}   //body[1]/app-root[1]/div[1]/main[1]/app-agence[1]/div[1]/div[1]/section[3]/div[1]/div[1]/div[2]/div[2]/div[1]/div[2]/div[1]/p[1]
${GoUpBtn}   //scroll-top-button[@id='bt-scroll-top']
${GoUpResultDiv}   //*[@id="marquee-agence"]/div[1]

${BlogFinder}     //header/nav[1]/div[1]/div[1]/div[1]/div[3]/button[1]
${BlogFinderInput}   //body[1]/div[3]/div[1]/header[1]/nav[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[1]/input[1]
${BlogSearch}   //body[1]/div[3]/div[1]/header[1]/nav[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[1]/button[1]
${BlogSrollTo}   //body/div[@id='page']/div[1]/div[1]/div[1]/div[1]/div[1]/aside[1]/div[1]/div[1]/div[1]/ul[1]/li[3]/article[1]/div[1]/div[2]/h5[1]

${BelowLinkedIn}  //html/body/app-root/div/main/app-offres/div/div/prez-main-footer/footer/div/div[2]
${LinkedInLink}   //body/app-root[1]/div[1]/main[1]/app-offres[1]/div[1]/div[1]/prez-main-footer[1]/footer[1]/div[1]/div[1]/div[2]/div[2]/ul[1]/li[1]
${LinkedInPageElement}   //body[1]/main[1]/section[1]/section[1]/div[1]/img[1]

