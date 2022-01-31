*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${MainPage}  http://localhost:3000/
${ProhlizecChrome}  Chrome

${Logo}   //body/div[@id='root']/div[1]/nav[1]/a[1]
${HeaderHome}   //body[1]/div[1]/div[1]/nav[1]/ul[1]/li[1]/a[1]
${HeaderDropDown}   //body/div[@id='root']/div[1]/nav[1]/ul[1]/li[2]/a[1]
${HeaderAbout}      //body[1]/div[1]/div[1]/nav[1]/ul[1]/li[3]/a[1]

@{MainElements}   //body/div[@id='root']/div[1]/nav[1]/a[1]   //*[@id="root"]/div/div[1]/div/h1    //body/div[@id='root']/div[1]/div[2]

${MainHead}     //*[@id="root"]/div/div[1]/div/h1
${MainParagraph}   //body/div[@id='root']/div[1]/div[1]/div[1]/p[1]

${EmojiPage}    http://localhost:3000/emoji
${EmojiSearch}   //body/div[@id='root']/div[1]/div[1]/div[1]/div[1]/input[1]

${CarouselNext}  //button[contains(text(),'❯')]
${CarouselPrevious}   //*[@id="root"]/div/div[1]/div/div[1]/button[1]
${CarouselFour}  //body/div[@id='root']/div[1]/div[1]/div[1]/div[2]/button[4]

${TodoInputName}  //body/div[@id='root']/div[1]/div[1]/input[1]
${TodoInputDes}   //body/div[@id='root']/div[1]/div[1]/textarea[1]
${TodoAddButton}  //body[1]/div[1]/div[1]/div[1]/button[1]

${TodoCheckBoxFirst}  //*[@id="root"]/div/div[2]/div[1]/div/div/div/input
${TodoCheckBoxThird}  //*[@id="root"]/div/div[2]/div[3]/div/div/div/input

${TodoEdit}  //*[@id="root"]/div/div[2]/div[1]/div/div/div/span[1]
${TodoEditName}  //*[@id="root"]/div/div[2]/div[1]/div/input
${TodoEditDes}   //*[@id="root"]/div/div[2]/div[1]/div/textarea
${TodoEditSave}   //*[@id="root"]/div/div[2]/div[1]/div/button[1]
${TodoEditCancel}  //*[@id="root"]/div/div[2]/div[1]/div/button[2]
${TodoDelete}   //*[@id="root"]/div/div[2]/div[1]/div/div/div/span[2]

${AboutPage}   //a[contains(text(),'About')]