 void readyScreen2(){
  
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
      readyBool = false;
      refBool = false;
   
  
 textSize(style.h4);
 textAlign(CENTER);
 text("Team 2 Ready", style.centerX, style.row2); //write rules here
  
  readyButton2.display(style.centerX, style.row5, readyButton1.w5, readyButton1.ht6, "GO!", style.h6);
  readyButton2.update(); 
  
  if (readyButton2.pressed) { 
    team1or2 = true;
    refBool = true;
}
  
}
