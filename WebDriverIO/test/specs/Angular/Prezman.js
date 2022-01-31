
// function logMessage(text) {
//     console.log('Text of the paragraph: ' + text);
// }

// describe('Angular_Prezman', () => {
//     it('000-Prepare main page', () => {
//         browser.url('https://www.prezman.fr/');
//         browser.maximizeWindow();
//     });

//     it('001-Check logo and main header', () => {
//         const navbarAgence = $('//body/app-root[1]/div[1]/app-main-nav[1]/div[1]/div[1]/div[2]/nav[1]/ul[1]/li[2]');    // $('#gh-ac') specify unique selector (id)
//         const mainImage = $('//body/app-root[1]/div[1]/main[1]/app-home[1]/div[1]/div[1]/div[1]/a[1]/span[1]/span[1]/img[1]');

//         navbarAgence.waitForDisplayed();
//         mainImage.waitForDisplayed();
//         browser.saveScreenshot('./test/screenshots/angular/prezman/mainPage.png');
//     });

//     it('002-Check navbar items', () => {
//         const navbarRelations = $('//body[1]/app-root[1]/div[1]/app-main-nav[1]/div[1]/div[1]/div[2]/nav[1]/ul[1]/li[1]/a[1]');
//         const navbarAgence = $('//body/app-root[1]/div[1]/app-main-nav[1]/div[1]/div[1]/div[2]/nav[1]/ul[1]/li[2]');
//         const navbarOffers = $('//body[1]/app-root[1]/div[1]/app-main-nav[1]/div[1]/div[1]/div[2]/nav[1]/ul[1]/li[3]/a[1]');
//         const navbarReferences = $('//body[1]/app-root[1]/div[1]/app-main-nav[1]/div[1]/div[1]/div[2]/nav[1]/ul[1]/li[4]/a[1]');
//         const navbarPlus = $('//body/app-root[1]/div[1]/app-main-nav[1]/div[1]/div[1]/div[2]/nav[1]/ul[1]/li[5]/div[1]');

//         navbarRelations.moveTo();
//         browser.saveScreenshot('./test/screenshots/angular/prezman/hoverNavbarRelations.png');

//         navbarAgence.moveTo();
//         browser.saveScreenshot('./test/screenshots/angular/prezman/hoverNavbarAgence.png');

//         navbarOffers.moveTo();
//         browser.saveScreenshot('./test/screenshots/angular/prezman/hoverNavbarOffers.png');

//         navbarReferences.moveTo();
//         browser.saveScreenshot('./test/screenshots/angular/prezman/hoverNavbarReferences.png');

//         navbarPlus.moveTo();
//         browser.saveScreenshot('./test/screenshots/angular/prezman/hoverNavbarPlus.png');
//     });

//     it('003-Check Main page main image', () => {
//         const mainImage = $('//body/app-root[1]/div[1]');

//         mainImage.waitForDisplayed();
//         mainImage.moveTo();
//         mainImage.click();
//     });

//     it('004-Start Carousel', () => {
//         const mainImage = $('//body/app-root[1]/div[1]');

//         mainImage.waitForDisplayed();
//         mainImage.click();
//         browser.saveScreenshot('./test/screenshots/angular/prezman/carouselStart.png');
//     });

//     it('005-Carousel switch to next item', () => {
//         const carouselNext = $('//body/app-root[1]/div[1]/main[1]/app-use-case[1]/div[1]/div[1]/div[2]/div[1]/div[1]/slider-usecases[1]/div[1]/div[1]/div[1]/div[2]');    
    
//         carouselNext.waitForEnabled();
//         carouselNext.click();
//         browser.pause(500);
//         browser.saveScreenshot('./test/screenshots/angular/prezman/carouselNext.png');
//     });

//     it('006-Carousel switch to previous item', () => {
//         const carouselPrevious = $('//body/app-root[1]/div[1]/main[1]/app-use-case[1]/div[1]/div[1]/div[2]/div[1]/div[1]/slider-usecases[1]/div[1]/div[1]/div[1]/div[3]');    
    
//         carouselPrevious.click();
//         browser.pause(500);
//         browser.saveScreenshot('./test/screenshots/angular/prezman/carouselPrevious.png');
//     });

//     it('007-Redirect to video by carousel item', () => {
//         const carouselNext = $('//body/app-root[1]/div[1]/main[1]/app-use-case[1]/div[1]/div[1]/div[2]/div[1]/div[1]/slider-usecases[1]/div[1]/div[1]/div[1]/div[2]');    
//         const carouselThirdItem = $('//body/app-root[1]/div[1]/main[1]/app-use-case[1]/div[1]/div[1]/div[2]/div[1]/div[1]/slider-usecases[1]/div[1]/div[1]/div[1]/div[1]/div[6]/div[2]/div[1]/a[1]/span[3]');    
    
//         carouselNext.click();
//         browser.pause(500);
//         carouselNext.click();
//         carouselThirdItem.waitForEnabled();
//         carouselThirdItem.click();
//     });

//     it('008-Play video', () => {
//         const video = $('//body/app-root[1]/div[1]/main[1]/app-google[1]/use-case-view[1]/div[1]/section[1]/div[1]/div[4]/div[2]/div[1]/div[1]');    
//         const headerUnderVideo = $("//h4[contains(text(),'Enjeu')]");    
        
//         video.waitForDisplayed();
//         video.scrollIntoView();
//         browser.saveScreenshot('./test/screenshots/angular/prezman/carouselItemPageVideo.png');
//         video.click();

//         browser.pause(5000);
//         browser.saveScreenshot('./test/screenshots/angular/prezman/carouselItemPageVideoPlaying.png');
//     });

//     it('009-Go back by back button', () => {
//         const carouselItemPageBackButton = $('//body[1]/app-root[1]/div[1]/main[1]/app-google[1]/use-case-view[1]/div[1]/button-usecase-back[1]/a[1]/span[1]/span[2]');    
//         const carouselThirdItem = $('//body/app-root[1]/div[1]/main[1]/app-use-case[1]/div[1]/div[1]/div[2]/div[1]/div[1]/slider-usecases[1]/div[1]/div[1]/div[1]/div[1]/div[6]/div[2]/div[1]/a[1]/span[3]');    
        
//         carouselItemPageBackButton.click();
//         carouselThirdItem.waitForDisplayed();
//     });

//     it('010-Redirect to Agence by navbar', () => {
//         const navbarAgence = $('//body/app-root[1]/div[1]/app-main-nav[1]/div[1]/div[1]/div[2]/nav[1]/ul[1]/li[2]');    
//         const contentStrategyPar = $('//body[1]/app-root[1]/div[1]/main[1]/app-agence[1]/div[1]/div[1]/section[3]/div[1]/div[1]/div[2]/div[2]/div[1]/div[2]/div[1]/p[1]');    
        
//         navbarAgence.click();
//         contentStrategyPar.waitForEnabled();
//         expect(browser).toHaveUrlContaining('agence')
//     });
    
//     it('011-Log text from Content strategy paragraph', () => {
//         const contentStrategyPar = $('//body[1]/app-root[1]/div[1]/main[1]/app-agence[1]/div[1]/div[1]/section[3]/div[1]/div[1]/div[2]/div[2]/div[1]/div[2]/div[1]/p[1]');    
        
//         contentStrategyPar.scrollIntoView();
//         browser.saveScreenshot('./test/screenshots/angular/prezman/penParagraph.png');
//         logMessage(contentStrategyPar.getText());
//     });

//     it('012-Scroll top by Up button', () => {
//         const goUpBtn = $("//body/app-root[1]/div[1]/main[1]/app-agence[1]/div[1]/scroll-top-button[1]/div[1]/span[1]/span[1]/span[1]");    
//         const goUpResultDiv = $('//*[@id="marquee-agence"]/div[1]');    
        
//         goUpBtn.waitForDisplayed();
//         goUpBtn.click();

//         goUpResultDiv.waitForDisplayed();
//         browser.saveScreenshot('./test/screenshots/angular/prezman/agencePageScrollTopResult.png');
//     });

//     it('013-Search', () => {
//         const blogFinder = $("//header/nav[1]/div[1]/div[1]/div[1]/div[3]/button[1]");    
//         const blogFinderInput = $('//body[1]/div[3]/div[1]/header[1]/nav[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[1]/input[1]');    
//         const blogSearch = $('//body[1]/div[3]/div[1]/header[1]/nav[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[1]/button[1]');    
//         const blogSrollTo = $("//body/div[@id='page']/div[1]/div[1]/div[1]/div[1]/div[1]/aside[1]/div[1]/div[1]/div[1]/ul[1]/li[3]/article[1]/div[1]/div[2]/h5[1]");    
        
//         browser.url('https://www.prezman.fr/blog/');

//         blogFinder.waitForDisplayed();
//         blogFinder.click();

//         blogFinderInput.waitForDisplayed();
//         blogFinderInput.click();
//         blogFinderInput.addValue("lights");
//         blogSearch.click();

//         blogSrollTo.waitForDisplayed();
//         blogSrollTo.scrollIntoView();
//         browser.saveScreenshot('./test/screenshots/angular/prezman/BlogSearhLights.png');
//     });

//     it('014-Redirect to Main page by logo', () => {
//         const navbarLogo = $("//body[1]/div[3]/div[1]/header[1]/div[1]/div[1]/a[1]/img[1]");    

//         navbarLogo.scrollIntoView();
//         navbarLogo.click();
//         browser.pause(3000);
//         expect(browser).toHaveUrl('https://www.prezman.fr/');
//         browser.saveScreenshot('./test/screenshots/angular/prezman/agencePageScrollTopResult.png');
//     });

//     it('015-Redirect to LinkedIn', () => {
//         const belowLinkedIn = $("//html/body/app-root/div/main/app-offres/div/div/prez-main-footer/footer/div/div[2]");    
//         const linkedInLink = $("//body/app-root[1]/div[1]/main[1]/app-offres[1]/div[1]/div[1]/prez-main-footer[1]/footer[1]/div[1]/div[1]/div[2]/div[2]/ul[1]/li[1]");    

//         browser.url('https://www.prezman.fr/offres');
//         linkedInLink.waitForEnabled();
//         linkedInLink.scrollIntoView();
        
//         linkedInLink.moveTo();
//         browser.pause(5000);
//         browser.saveScreenshot('./test/screenshots/angular/prezman/HoverLinkedInLink.png');
//         linkedInLink.click();
        
//         browser.switchWindow('https://www.linkedin.com/company/prezman/');
//         browser.switchWindow('linkedin');
//         browser.pause(3000);
//         browser.saveScreenshot('./test/screenshots/angular/prezman/LinkedInPage.png');
//     });
// });