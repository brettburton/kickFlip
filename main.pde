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
 
 text("Relay Rush is a relay race on skateboards. The goal of teams is to complete the obstacle course doing the hardest tricks in the fastest time. players man obstacles and land a sucessful trick/trick line on said obstacle then rush over to their next team mate. This action is repeated until the last player has gone.", style.col1, style.row6, style.col6, style.row6 ); //write rules here
 text("THE CATCH: players must submit their trick decisions too the ref before the game begins. All trick decisions are final. Players get penalized for missing. The more you miss the higher the penalty. Players can cop-out for a default score. A cop-out is any trick other than the one the ref has registered for you.", style.col1, style.row7, style.col6, style.row7 ); //write rules here
 
 
 
  if (mainButton.pressed) { 
    secondBool =true;
    mainBool = false;
}

}
