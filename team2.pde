void team2Screen(){



 text("Team 2", width/2, height/2-150);
 text("Select Skaters", width/2, height/2 - 100);
 text("Select Difficulty", width/2, height/ 2 - 200);
 
 
  team2Button.display(width/2, height/2, 200,100,"enter", 30);
  team2Button.update();
  
   if (team2Button.pressed) { //the button that is the bigmap image
    secondBool =false;
    mainBool = false;
    mapBool = false;
    skateBool= false; 
    localBool = false;
    lesDBool = false;
    checkBool = false;
    loginBool = false;
    team1Bool = false;
    team2Bool = true;
  }
 
}
