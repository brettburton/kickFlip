 void obstaclesScreen(){

  
// fillJSON();

   secondBool =false;
    mainBool = false;
    mapBool = false;
    skateBool= false; 
    localBool = false;
    lesDBool = false;
    checkBool = false;
    loginBool = false;
//    loginBool2 = false;
    team1Bool = false;
    team2Bool = false;
   // startBool = true;
 
 
 textAlign(CENTER,CENTER);

 textSize(style.h3);
 
if (team1or2 == false){
 text(teamname1.saved, style.centerX, style.row1);
 }
 
if (team1or2 == true){
 text(teamname2.saved, style.centerX, style.row1);
 }
 
 text("Obstacle "+ trickNum, style.centerX, style.row2);
 
 textSize(style.h2);
 textAlign(LEFT,BOTTOM);
 text("Flip-In: " + flipIStr, style.col1, style.row3);
 text("Grind: " + grindStr, style.col1, style.row4);
 text("Flip-Out: " + flipOStr, style.col1, style.row5);
 text("Stance: " + stanceStr, style.col1, style.row6);
 
 
 textAlign(LEFT,TOP);
 
 //Previous and Next Buttons
 flipIPrevButton.display(style.col1, style.row3, flipIPrevButton.w5, flipIPrevButton.ht5, "<", style.h3);
 flipINextButton.display(style.col6, style.row3, flipINextButton.w5, flipINextButton.ht5, ">", style.h3);
 
 grindPrevButton.display(style.col1, style.row4, flipIPrevButton.w5, flipIPrevButton.ht5, "<", style.h3);
 grindNextButton.display(style.col6, style.row4, flipINextButton.w5, flipINextButton.ht5, ">", style.h3);
 
 flipOPrevButton.display(style.col1, style.row5, flipIPrevButton.w5, flipIPrevButton.ht5, "<", style.h3);
 flipONextButton.display(style.col6, style.row5, flipINextButton.w5, flipINextButton.ht5, ">", style.h3);
 
 stancePrevButton.display(style.col1, style.row6, flipIPrevButton.w5, flipIPrevButton.ht5, "<", style.h3);
 stanceNextButton.display(style.col6, style.row6, flipINextButton.w5, flipINextButton.ht5, ">", style.h3);
 
 flipINextButton.update();
 flipIPrevButton.update();
 grindNextButton.update();
 grindPrevButton.update();
 flipONextButton.update();
 flipOPrevButton.update();
 stanceNextButton.update();
 stancePrevButton.update();
 
 //prev/next button logic
 
 //FLIP-IN -----------------------------------------
 
  if(flipINextButton.pressed && doItOnce == false) {
   whichFlipIn += 1;
   if (whichFlipIn > flipIns.size()-1){
     whichFlipIn = 0;
   }
   doItOnce = true;
   JSONObject fIn = flipIns.getJSONObject(whichFlipIn); //create a temp JSON Object and load it with JSON data
   componentPoints[0] = fIn.getInt("points"); //get the point value for our trick and store it in a variable
//   println(componentPoints[0]);
 }
 
   if(flipIPrevButton.pressed && doItOnce == false) {
   whichFlipIn -= 1;
   if (whichFlipIn < 0){
     whichFlipIn = flipIns.size()-1;
   }
   doItOnce = true;
   JSONObject fIn = flipIns.getJSONObject(whichFlipIn); 
   componentPoints[0] = fIn.getInt("points");
//   println(componentPoints[0]);
 }
 

JSONObject fIn = flipIns.getJSONObject(whichFlipIn);
flipIStr = fIn.getString("name");

 
 
//FLIP-OUT -----------------------------------------
 
  if(flipONextButton.pressed && doItOnce == false) {
   whichFlipOut += 1;
   if (whichFlipOut > flipOuts.size()-1){
     whichFlipOut = 0;
   }
   doItOnce = true;
   JSONObject fOut = flipOuts.getJSONObject(whichFlipOut); //create a temp JSON Object and load it with JSON data
   componentPoints[2] = fOut.getInt("points"); //get the point value for our trick and store it in a variable
//   println(componentPoints[2]);
 }
 
   if(flipOPrevButton.pressed && doItOnce == false) {
   whichFlipOut -= 1;
   if (whichFlipOut < 0){
     whichFlipOut = flipOuts.size()-1;
   }
   doItOnce = true;
   JSONObject fOut = flipOuts.getJSONObject(whichFlipOut); 
   componentPoints[2] = fOut.getInt("points");
//   println(componentPoints[2]);
 }
 

JSONObject fOut = flipOuts.getJSONObject(whichFlipOut);
flipOStr = fOut.getString("name");

 
//GRIND -----------------------------------------
 
  if(grindNextButton.pressed && doItOnce == false) {
   whichGrind += 1;
   if (whichGrind > grinds.size()-1){
     whichGrind = 0;
   }
   doItOnce = true;
   JSONObject Grind = grinds.getJSONObject(whichGrind); //create a temp JSON Object and load it with JSON data
   componentPoints[1] = Grind.getInt("points"); //get the point value for our trick and store it in a variable
//   println(componentPoints[1]);
 }
 
   if(grindPrevButton.pressed && doItOnce == false) {
   whichGrind -= 1;
   if (whichGrind < 0){
     whichGrind = grinds.size()-1;
   }
   doItOnce = true;
   JSONObject Grind = grinds.getJSONObject(whichGrind); 
   componentPoints[1] = Grind.getInt("points");
//   println(componentPoints[1]);
 }
 

JSONObject Grind = grinds.getJSONObject(whichGrind);
grindStr = Grind.getString("name");

//STANCE -----------------------------------------
 
  if(stanceNextButton.pressed && doItOnce == false) {
   whichStance += 1;
   if (whichStance > stances.size()-1){
     whichStance = 0;
   }
   doItOnce = true;
   JSONObject Stance = stances.getJSONObject(whichStance); //create a temp JSON Object and load it with JSON data
   componentPoints[3] = Stance.getInt("points"); //get the point value for our trick and store it in a variable
//   println(componentPoints[3]);
 }
 
   if(stancePrevButton.pressed && doItOnce == false) {
   whichStance -= 1;
   if (whichStance < 0){
     whichStance = stances.size()-1;
   }
   doItOnce = true;
   JSONObject Stance = stances.getJSONObject(whichStance); 
   componentPoints[3] = Stance.getInt("points");
//   println(componentPoints[3]);
 }
 

JSONObject Stance = stances.getJSONObject(whichStance);
stanceStr = Stance.getString("name");

 
 //-----------------------------------
 
 textAlign(CENTER,CENTER);
 
  enterButton.display(style.centerX, style.row7, enterButton.w3,enterButton.ht3,"Enter", style.h3);
  enterButton.update();
  
   if (enterButton.pressed && doItOnce == false) { 
    if (team1or2 == true){
     //the stupid -1 math here is because trickNum starts at 1 for display purposes
     team2tempPoints[trickNum-1] = componentPoints[0] + componentPoints[1] + componentPoints[2] + componentPoints[3];
//     print ("team 2 trick #" + trickNum + ": ");
     println(team2tempPoints[trickNum-1]);
//     resetDrop();
     trickNum += 1;
    }
    if (team1or2 == false){
     team1tempPoints[trickNum-1] = componentPoints[0] + componentPoints[1] + componentPoints[2] + componentPoints[3];
//     print ("team 1 trick #" + trickNum + ": ");
     println(team1tempPoints[trickNum-1]);
//     resetDrop();
    }
    //if false team 1 if true team 2 
    
    
    team1or2 = !team1or2;
    doItOnce = true;
//    println (team1or2);
    
    if (trickNum == 5){
     team1or2 = false;
     readyBool = true;
     //startBool = true; 
    }
    
  }
  
  //reset our doItOnce when no buttons are being pressed
     if (enterButton.pressed == false 
  && flipINextButton.pressed == false 
  && flipIPrevButton.pressed == false
  && flipONextButton.pressed == false 
  && flipOPrevButton.pressed == false
  && grindNextButton.pressed == false 
  && grindPrevButton.pressed == false
  && stanceNextButton.pressed == false 
  && stancePrevButton.pressed == false
  ){
    doItOnce = false;
  }
  
}
