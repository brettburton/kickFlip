 void readyScreen(){
  
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
      

  
 textSize(style.h4);
 textAlign(CENTER);
 text("Team 1 Ready", style.centerX, style.row2); //write rules here
  
  readyButton1.display(style.centerX, style.row5, readyButton1.w5, readyButton1.ht6, "GO!", style.h6);
  readyButton1.update(); 
  
  if (readyButton1.pressed) { 
    refBool = true;
}
  
}
