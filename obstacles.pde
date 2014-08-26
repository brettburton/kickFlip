void obstaclesScreen(){

// dropDraw();
  
// textSize(style.h3);
// text(teamname1.saved, style.col2, style.row2);
// textSize(style.p);

 textSize(style.h3);
 text("Trick Number 1", style.centerX, style.row1);
 
 d1.setPosition(style.col2, style.row2);
 d1.captionLabel().set("Flip In");
 customize(d1);
 
 d2.setPosition(style.col2, style.row3);
 d2.captionLabel().set("Grind");
 customize(d2);
 
 d3.setPosition(style.col2, style.row4);
 d3.captionLabel().set("Flip Out");
 customize(d3);
 
 d4.setPosition(style.col2, style.row5);
 d4.captionLabel().set("Stance");
 customize(d4);
 
// textSize(style.h3);
// text(teamname2.saved, style.col6, style.row2);
// textSize(style.p);
// text("Order of course obstacles", style.col6, style.row3);
// text("Trick Dropdown goes here", style.col6, style.row4);
 
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
    d1.remove(); //this removes our dropdown
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
