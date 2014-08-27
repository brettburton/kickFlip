void obstaclesScreen(){

// dropDraw();
  
// fillJSON();

 textSize(style.h3);
 text("Trick Number 1", style.centerX, style.row1);
 
 d1.show();
 d2.show();
 d3.show();
 d4.show();
 
 
  startButton.display(style.centerX, style.row7, startButton.w3,startButton.ht2,"Skate!", style.h3);
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
    d1.remove(); //this removes our dropdowns
    d2.remove();
    d3.remove();
    d4.remove();
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
