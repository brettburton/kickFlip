public void loginScreen2(){

  //brett will add dropdown
  
 textSize(style.h3);
 text("Team 2 Name", style.centerX, style.row2);
 fill(255);
 rectMode(CENTER);
 rect(style.centerX, style.row3, loginButton.w5, loginButton.ht4);
 fill(0);
 textAlign(CENTER, CENTER);
 teamname2.display(style.centerX, style.row3);


 //JSON SAVE STUFF
 teamNames.setString("Name2", teamname2.saved);
 saveJSONObject(teamNames, "data/teamNames.json");

 if (teamname2.enter){
    secondBool =false;
    mainBool = false;
    mapBool = false;
    skateBool= false; 
    localBool = false;
    lesDBool = false;
    checkBool = false;
    loginBool = false;
    loginBool2 = true;
 }
}
