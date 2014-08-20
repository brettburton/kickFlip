void team1Screen(){


  

 text("Team 1", width/2, height/2-150);
 text("Select Skaters", width/2, height/2 - 100);
 text("Select Difficulty", width/2, height/ 2 - 200);
 
 
  team1Button.display(width/2, height/2, 200,100,"enter", 30);
  team1Button.update();
  
   if (team1Button.pressed) { //the button that is the bigmap image
    secondBool =false;
    mainBool = false;
    mapBool = false;
    skateBool= false; 
    localBool = false;
    lesDBool = false;
    checkBool = false;
    loginBool = false;
    team1Bool = true;
  }
 
}
