// describe('React_facebook', () => {
//     it('000-Prepare main page', () => {
//         browser.url('https://facebook.com/');
//         browser.maximizeWindow();
//     });

//     it('001-Allow cookies', () => {
//         const cookies = $('//body[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/div[3]/button[2]');    
        
//         cookies.waitForDisplayed();
//         cookies.click();
//     });
    
//     it('002-Login', () => {
//         const emailInput = $('//*[@id="email"]');    
//         const passwordInput = $('//*[@id="pass"]');    
//         const loginButton = $('//body[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[2]/button[1]');    
        
//         emailInput.waitForDisplayed();
//         passwordInput.waitForDisplayed();
//         browser.saveScreenshot('./test/screenshots/react/facebook/loginPage.png');
        
//         emailInput.addValue('burdy8910@gmail.com');
//         passwordInput.addValue('aaa123');
//         loginButton.click();
//     });

//     it('003-Check navbar items', () => {
//         const market = $('//body[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[3]/div[1]/div[1]/div[1]/ul[1]/li[3]/span[1]/div[1]/a[1]');

//         market.waitForDisplayed()
//         market.click();
//         browser.pause(5000);

//         browser.saveScreenshot('./test/screenshots/react/facebook/facebookMainPage.png');
//     });

//     it('003-Check navbar items', () => {
//         const a = $('//body[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[4]/div[1]/span[1]/div[1]');

//         a.waitForDisplayed()
//         a.click()
//         browser.pause(5000);

//         browser.saveScreenshot('./test/screenshots/react/facebook/facebookContinue.png');
//     });
    
//     // cannot handle next Test cases because of Cookies
// });