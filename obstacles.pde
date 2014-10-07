 void obstaclesScreen(){

 
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
 
 componentPoints[0] = flipPoints[whichFlipIn]; //get the point value for our trick and store it in a variable
 componentPoints[1] = grindPoints[whichGrind];
 componentPoints[2] = flipPoints[whichFlipOut];
 componentPoints[3] = stancePoints[whichStance];
 
 
 //prev/next button logic
 
 //FLIP-IN -----------------------------------------
 
  if(flipINextButton.pressed && doItOnce == false) {
   whichFlipIn += 1;
   if (whichFlipIn > flipPoints.length-1){
     whichFlipIn = 0;
   }
   doItOnce = true;
 }
 
   if(flipIPrevButton.pressed && doItOnce == false) {
   whichFlipIn -= 1;
   if (whichFlipIn < 0){
     whichFlipIn = flipPoints.length-1;
   }
   doItOnce = true;
 }
 
flipIStr = flipNames[whichFlipIn];

 
 
//FLIP-OUT -----------------------------------------
 
  if(flipONextButton.pressed && doItOnce == false) {
   whichFlipOut += 1;
   if (whichFlipOut > flipPoints.length-1){
     whichFlipOut = 0;
   }
   doItOnce = true;
 }
 
   if(flipOPrevButton.pressed && doItOnce == false) {
   whichFlipOut -= 1;
   if (whichFlipOut < 0){
     whichFlipOut = flipPoints.length-1;
   }
   doItOnce = true;
 }
 
flipOStr = flipNames[whichFlipOut];

 
//GRIND -----------------------------------------
 
  if(grindNextButton.pressed && doItOnce == false) {
   whichGrind += 1;
   if (whichGrind > grindPoints.length-1){
     whichGrind = 0;
   }
   doItOnce = true;
 }
 
   if(grindPrevButton.pressed && doItOnce == false) {
   whichGrind -= 1;
   if (whichGrind < 0){
     whichGrind = grindPoints.length-1;
   }
   doItOnce = true;
 }
 
grindStr = grindNames[whichGrind];

//STANCE -----------------------------------------
 
  if(stanceNextButton.pressed && doItOnce == false) {
   whichStance += 1;
   if (whichStance > stancePoints.length-1){
     whichStance = 0;
   }
   doItOnce = true;
 }
 
   if(stancePrevButton.pressed && doItOnce == false) {
   whichStance -= 1;
   if (whichStance < 0){
     whichStance = stancePoints.length-1;
   }
   doItOnce = true;
 }
 
stanceStr = stanceNames[whichStance];

 
 //-----------------------------------
 
 textAlign(CENTER,CENTER);
 
  enterButton.display(style.centerX, style.row7, enterButton.w3,enterButton.ht3,"Enter", style.h3);
  enterButton.update();
  
   if (enterButton.pressed && doItOnce == false) { 
    
     if (team1or2 == true){
     //the stupid -1 math here is because trickNum starts at 1 for display purposes
     team2tempPoints[trickNum-1] = componentPoints[0] + componentPoints[1] + componentPoints[2] + componentPoints[3];
     trickNum += 1;
     whichFlipIn = 0;  //reset our buttons
     whichFlipOut = 0;
     whichGrind = 0;
     whichStance = 0; 
    }
    
    if (team1or2 == false){
     team1tempPoints[trickNum-1] = componentPoints[0] + componentPoints[1] + componentPoints[2] + componentPoints[3];
     whichFlipIn = 0; //reset our buttons
     whichFlipOut = 0;
     whichGrind = 0;
     whichStance = 0;
    }
    //if false team 1 if true team 2 
    team1or2 = !team1or2;
    doItOnce = true;
    
    if (trickNum == 5){
     team1or2 = false;
     readyBool = true;
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
