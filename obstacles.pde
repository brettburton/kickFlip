public void obstaclesScreen(){

// dropDraw();
  
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
 

 textSize(style.h3);
 
if (team1or2 == false){
 text(teamname1.saved, style.centerX, style.row1);
 }
 
if (team1or2 == true){
 text(teamname2.saved, style.centerX, style.row1);
 }
 
 text("Obstacle "+ trickNum, style.centerX, style.row2);
 
 d1.show();
 d2.show();
 d3.show();
 d4.show();
 
 
 
  enterButton.display(style.centerX, style.row7, enterButton.w3,enterButton.ht2,"Enter", style.h3);
  enterButton.update();
  
   if (enterButton.pressed && doItOnce == false) { //the button that is the bigmap image
    if (team1or2 == true){
      trickNum += 1;
    }
    team1tempPoints[0] = componentPoints[0] + componentPoints[1] + componentPoints[2] + componentPoints[3];
    println(team1tempPoints[0]);
    team1or2 = !team1or2;
    doItOnce = true;
    println (team1or2);
    
    if (trickNum == 5){
     team1or2 = false;
     readyBool = true;
     //startBool = true; 
    }
    
  }
  
  if (enterButton.pressed == false) {
    doItOnce = false;
  }
  
  
  
  //-----------------------
 // SHOWING AND HIDING DROPDOWNS
 
 //d1
 if (d1.isOpen()){
   d2.hide();
   d3.hide();
   d4.hide();
 }
 
 //d2
 if (d2.isOpen()){
   d3.hide();
   d4.hide();
 }
 
 //d3
 if (d3.isOpen()){
   d4.hide();
 }
 
 
 if (d1.isOpen() == false && d2.isOpen() == false && d3.isOpen() == false && d4.isOpen() == false){
   d1.show();
   d2.show();
   d3.show();
   d4.show();
 }
 
}
