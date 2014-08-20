void obstaclesScreen(){

  //brett will add dropdown
  

 
 textSize(style.h3);
 text("Team 1", style.col2, style.row2);
 textSize(style.p);
 text("Order of course obstacles", style.col2, style.row3);
 text("Trick Dropdown goes here", style.col2, style.row4);
 
 textSize(style.h3);
 text("Team 2", style.col6, style.row2);
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
    team1Bool = false;
    team2Bool = false;
    startBool = true;
  }
 
}
