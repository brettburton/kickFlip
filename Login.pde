void loginScreen(){

  //brett will add dropdown
  
 textSize(style.h3);
 text("team 1 name", style.centerX, style.row3);
 text("team 2 name", style.centerX, style.row5);
 
  loginButton.display(style.centerX, style.row7, loginButton.w3, loginButton.ht4, "enter", style.h3);
  loginButton.update();
  
   if (loginButton.pressed) { //the button that is the bigmap image
    secondBool =false;
    mainBool = false;
    mapBool = false;
    skateBool= false; 
    localBool = false;
    lesDBool = false;
    checkBool = false;
    loginBool = true;
  }
 
}

