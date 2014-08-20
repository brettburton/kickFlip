//-------------------------------------


void mainScreen(){
  
  fill(style.c2);
  //----button---//
  textAlign(CENTER, CENTER);
  //rectMode(CENTER);
//  mainButton.display(style.centerX, style.row2, mainButton.w6,mainButton.ht6);
  mainButton.display(style.centerX, style.row2, mainButton.w6,mainButton.ht6, "kickflip", style.h6);
  mainButton.update();
  //---button---//
 
 //text("word", 10, 60);

 textSize(style.p);
 textAlign(CENTER);
 text("RULES: Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", style.col1, style.row4, style.col6, style.row4 ); //write rules here
  
  if (mainButton.pressed) { 
    secondBool =true;
    mainBool = false;
}

}
