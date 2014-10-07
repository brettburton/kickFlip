//-------------------------------------


 void mainScreen(){
  
  fill(style.c2);
  //----button---//
  textAlign(CENTER, CENTER);
  //rectMode(CENTER);
//  mainButton.display(style.centerX, style.row2, mainButton.w6,mainButton.ht6);

  //mainButton.display(style.centerX, style.row2, mainButton.w6, mainButton.ht6, "RELAY RUSH", style.h5);
  mainButton.display(style.centerX, style.row1, width, height);
  mainButton.update();
  
  logo.resize(width, 0);
  image(logo, 0, style.row1);
  //---button---//
 
 //text("word", 10, 60);

 textSize(style.p);
 textAlign(CENTER);
 
 text("RULES: Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", style.col1, style.row6, style.col6, style.row6 ); //write rules here
  
  if (mainButton.pressed) { 
    secondBool =true;
    mainBool = false;
}

}
