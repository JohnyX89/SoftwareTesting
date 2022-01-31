// async function pasteFromClipboard() {
//     console.log('clipboard: ', await navigator.clipboard.readText());
//     return await navigator.clipboard.readText();
// }

// describe('My app', () => {
//     it('000-Prepare main page', () => {
//         browser.url('http://localhost:3000/');
//         browser.maximizeWindow();

//         browser.saveScreenshot('./test/screenshots/react/myapp/preparedMainPage.png');
//     });

//     it('001-Check logo, main paragraph and footer', () => {
//         const navBarLogo = $("//body/div[@id='root']/div[1]/nav[1]/a[1]");
//         const mainParHeader = $("//*[@id='root']/div/div[1]/div/h1");
//         const footer = $("//body/div[@id='root']/div[1]/div[2]");

//         navBarLogo.waitForDisplayed();
//         mainParHeader.waitForDisplayed();
//         footer.waitForDisplayed();
//     });


//     it('002-Check navbar items', () => {
//         const navBarHome = $("//body[1]/div[1]/div[1]/nav[1]/ul[1]/li[1]/a[1]");
//         const navBarDropdown = $("//body/div[@id='root']/div[1]/nav[1]/ul[1]/li[2]/a[1]");
//         const navBarAbout = $("//body[1]/div[1]/div[1]/nav[1]/ul[1]/li[3]/a[1]");

//         navBarHome.waitForDisplayed();
//         navBarHome.moveTo();
//         browser.saveScreenshot('./test/screenshots/react/myapp/hoverHome.png');

//         navBarDropdown.waitForDisplayed();
//         navBarDropdown.moveTo();
//         browser.saveScreenshot('./test/screenshots/react/myapp/hoverDropdown.png');

//         navBarAbout.waitForDisplayed();
//         navBarAbout.moveTo();
//         browser.saveScreenshot('./test/screenshots/react/myapp/hoverAbout.png');
//     });

//     it('003-Log main paragraph', () => {
//         const mainHead = $('//*[@id="root"]/div/div[1]/div/h1');
//         const mainParagraph = $("//body/div[@id='root']/div[1]/div[1]/div[1]/p[1]");

//         mainHead.getText();
//         mainParagraph.getText();
//     });

//     it('004-Redirect to Emoji by dropdown item', () => {
//         // not able to get path to navbar item - Emoji
//     });

//     it('005-Emoji filter', () => {
//         browser.url('http://localhost:3000/emoji');
//         const emojiSearch = $("//body/div[@id='root']/div[1]/div[1]/div[1]/div[1]/input[1]");

//         emojiSearch.waitForDisplayed();
//         browser.saveScreenshot('./test/screenshots/react/myapp/EmojiPageStart.png');

//         emojiSearch.addValue("happy");
//         browser.saveScreenshot('./test/screenshots/react/myapp/EmojiPageSearchHappy.png');
//     });

//     it('006-Emoji copy by click', () => {
//         const happy = $("//body/div[@id='root']/div[1]/div[1]/div[2]/div[6]");
//         const emojiSearch = $("//body/div[@id='root']/div[1]/div[1]/div[1]/div[1]/input[1]");

//         happy.moveTo();
//         happy.click();
    
//         emojiSearch.click();
//         emojiSearch.addValue(pasteFromClipboard());
//         browser.saveScreenshot('./test/screenshots/react/myapp/PasteFromClipboard.png');
//     });

//     it('007-Redirect to Carousel page by URL', () => {
//         const carouselNext = $("//button[contains(text(),'❯')]");
        
//         browser.url('http://localhost:3000/carousel');
//         carouselNext.waitForDisplayed();
//         browser.saveScreenshot('./test/screenshots/react/myapp/CarouselBegin.png');
//     });

//     it('008-Carousel switch to next by button', () => {    
//         const carouselNext = $("//button[contains(text(),'❯')]");
        
//         carouselNext.click();
//         browser.pause(300);
//         browser.saveScreenshot('./test/screenshots/react/myapp/CarouselFirstNext.png');

//         carouselNext.click();
//         browser.pause(300);
//         browser.saveScreenshot('./test/screenshots/react/myapp/CarouselSecondNext.png');
//     });

//     it('009-Carousel switch to previous by button', () => {      
//         const carouselPrevious = $('//*[@id="root"]/div/div[1]/div/div[1]/button[1]');

//         carouselPrevious.click();
//         browser.pause(300);
//         browser.saveScreenshot('./test/screenshots/react/myapp/CarouselPrevious.png');
//     });

//     it('010-Carousel switch to exact item', () => {    
//         const carouselExactItem = $("//body/div[@id='root']/div[1]/div[1]/div[1]/div[2]/button[4]");

//         carouselExactItem.click();
//         browser.pause(300);
//         browser.saveScreenshot('./test/screenshots/react/myapp/CarouselExactItem.png');
//     });

//     it('011-Create new item', () => {      
//         browser.url('http://localhost:3000/todo');
//         browser.saveScreenshot('./test/screenshots/react/myapp/todoPageBegin.png');

//         const todoInputName = $("//body/div[@id='root']/div[1]/div[1]/input[1]");
//         todoInputName.addValue("Test: ");
        
//         const todoInputDes = $("//body/div[@id='root']/div[1]/div[1]/textarea[1]");
//         todoInputDes.addValue("New item");
        
//         const todoAddButton = $("//body[1]/div[1]/div[1]/div[1]/button[1]");
//         todoAddButton.click();

//         browser.pause(1000);
//         browser.saveScreenshot('./test/screenshots/react/myapp/todoPageAddedItem.png');
//     });

//     it('012-Make item completed', () => {      
//         const checkBoxFirts = $('//*[@id="root"]/div/div[2]/div[1]/div/div/div/input');
//         const checkBoxThird = $('//*[@id="root"]/div/div[2]/div[3]/div/div/div/input');
        
//         checkBoxFirts.waitForDisplayed();
//         checkBoxFirts.click();
//         checkBoxThird.click();
//         browser.pause(300);
//         browser.saveScreenshot('./test/screenshots/react/myapp/todoPageCheckedItem.png');
//     });

//     it('013-Make item not completed', () => {  
//         const checkBoxThird = $('//*[@id="root"]/div/div[2]/div[3]/div/div/div/input');
//         checkBoxThird.click();

//         browser.pause(300);
//         browser.saveScreenshot('./test/screenshots/react/myapp/todoPageUnCheckedItem.png');
//     });

//     it('014-Edit item', () => {      
//         const todoEdit = $('//*[@id="root"]/div/div[2]/div[1]/div/div/div/span[1]');
//         const todoEditName = $('//*[@id="root"]/div/div[2]/div[1]/div/input');
//         const todoEditDes = $('//*[@id="root"]/div/div[2]/div[1]/div/textarea');
//         const todoEditSave = $('//*[@id="root"]/div/div[2]/div[1]/div/button[1]');
        
//         todoEdit.click();
//         todoEditName.addValue("AAA");
//         todoEditDes.addValue("BBB");
//         todoEditSave.click();

//         browser.pause(300);
//         browser.saveScreenshot('./test/screenshots/react/myapp/todoPageEditedItem.png');
//     });

//     it('015-Cancel during edit item', () => {      
//         const todoEdit = $('//*[@id="root"]/div/div[2]/div[1]/div/div/div/span[1]');
//         const todoEditName = $('//*[@id="root"]/div/div[2]/div[1]/div/input');
//         const todoEditDes = $('//*[@id="root"]/div/div[2]/div[1]/div/textarea');
//         const todoEditCancel = $('//*[@id="root"]/div/div[2]/div[1]/div/button[2]');
        
//         todoEdit.click();
//         todoEditName.addValue("XXX");
//         todoEditDes.addValue("YYY");
//         todoEditCancel.click();

//         browser.pause(300);
//         browser.saveScreenshot('./test/screenshots/react/myapp/todoPageCancelEdit.png');
//     });

//     it('016-Delete item', () => {      
//         const todoDelete = $('//*[@id="root"]/div/div[2]/div[1]/div/div/div/span[2]');
//         todoDelete.click();

//         browser.pause(300);
//         browser.saveScreenshot('./test/screenshots/react/myapp/todoPageAddedItem.png');
//     });

//     it('017-Redirect to About page by navbar item', () => {      
//         const navbarAbout = $("//a[contains(text(),'About')]");
//         navbarAbout.click();
//         expect(browser).toHaveUrlContaining('about')
//         browser.saveScreenshot('./test/screenshots/react/myapp/aboutPage.png');
//     });

//     it('018-Redirect to Main page by logo', () => {      
//         const logo = $("//body/div[@id='root']/div[1]/nav[1]/a[1]");
//         logo.click();
//         expect(browser).toHaveUrl('http://localhost:3000/')
//     });

// });