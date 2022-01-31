describe('Angular_gmail', () => {
    it('000-Prepare main page', () => {
        browser.url('https://gmail.com/');
        browser.maximizeWindow();
    });
    
    it('001-Login', () => {
        const email = $('#identifierId');    
        const emailNextButton = $('//body/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/button[1]/div[2]');
        const password = $('//body/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/span[1]/section[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]');    
        const passwordNextButton = $('//body/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/button[1]/div[2]');
    
        email.waitForDisplayed();
        browser.saveScreenshot('./test/screenshots/angular/gmail/Email.png');

        email.addValue('burdy8910@gmail.com');
        emailNextButton.click();
        password.waitForDisplayed();
        browser.saveScreenshot('./test/screenshots/angular/gmail/LoginPage.png');
    
        password.addValue('ABC...123');
        passwordNextButton.click();
    });
    
    
    it('002-New message', () => {
        const message = $('//*[@id=":m5"]/div/div');   
        
        browser.saveScreenshot('./test/screenshots/angular/gmail/LoggedIn.png');
        message.waitForDisplayed();
        message.click();
    });

    // cannot handle next Test cases because of Security against automation testing tools
});