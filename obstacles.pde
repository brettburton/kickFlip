void obstaclesScreen(){

// dropDraw();
  
 textSize(style.h3);
 text(teamname1.saved, style.col2, style.row2);
 textSize(style.p);
 d1.setPosition(style.col1, style.row3);
 d1.captionLabel().set("Trick");
 customize(d1);
 
 textSize(style.h3);
 text(teamname2.saved, style.col6, style.row2);
 textSize(style.p);
 text("Order of course obstacles", style.col6, style.row3);
 text("Trick Dropdown goes here", style.col6, style.row4);
 
  startButton.display(style.centerX, style.row6, startButton.w3,startButton.ht2,"Skate!", style.h3);
  startButton.update();
  
   if (startButton.pressed) { //the button that is the bigmap image
    secondBool =false;
    mainBool = false;
    mapBool = false;
    skateBool= false; 
    localBool = false;
    lesDBool = false;
    checkBool = false;
    loginBool = false;
    loginBool2 = false;
    team1Bool = false;
    team2Bool = false;
    startBool = true;
    d1.remove(); //this removes our dropdown
  }
 
}
