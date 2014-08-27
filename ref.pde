void refScreen(){
  
//TEAM 1
  textSize(style.h1);
  text(teamname1.saved, style.col2, style.row1);
  text("Obstacle # " + obstacle1, style.col2, style.row2);
  
  hit1Button.display(style.col2, style.row4, hit1Button.w3, hit1Button.ht3, "HIT", style.h3);
  hit1Button.update();
  
  miss1Button.display(style.col2,style.row5, miss1Button.w3,miss1Button.ht3,"MISS", style.h3);
  miss1Button.update();

  cop1Button.display(style.col2,style.row6, cop1Button.w3,cop1Button.ht3,"COPOUT", style.h3);
  cop1Button.update();
  
  textSize(style.h1);
  text(teamname2.saved, style.col6, style.row1);
  text("Obstacle # " + obstacle2, style.col6, style.row2);
  
  hit2Button.display(style.col6, style.row4, hit2Button.w3, hit2Button.ht3, "HIT", style.h3);
  hit2Button.update();
  
  miss2Button.display(style.col6,style.row5, miss2Button.w3,miss2Button.ht3,"MISS", style.h3);
  miss2Button.update();

  cop2Button.display(style.col6,style.row6, cop2Button.w3,cop2Button.ht3,"COPOUT", style.h3);
  cop2Button.update();
  
  if(sw.running == false){
  sw.start(); //start the timer
  }
  String timer = nf(sw.minute(), 2)+":"+nf(sw.second(), 2);
  text("TIMER: "+timer, style.centerX, style.row7);

 //-----------------------------------
  
  //TEAM 1 BUTTON LOGIC
   if (hit1Button.pressed && doItOnce1 == false) { 
      doItOnce1 = true;
      obstacle1+=1;
      hit1+=1;
//      println(obstacle1);
  }
  
   if (cop1Button.pressed && doItOnce1 == false) { 
      doItOnce1 = true;
      obstacle1+=1;
      cop1+=1;
//      println(obstacle1);
  }
  
  if (miss1Button.pressed && doItOnce1 == false) { 
      doItOnce1 = true;
      miss1+=1;
//      println("miss");
  }
  
  if (hit1Button.pressed == false && cop1Button.pressed == false && miss1Button.pressed == false){
    doItOnce1 = false;
  }
  
  //TEAM 2 BUTTON LOGIC
   if (hit2Button.pressed && doItOnce2 == false) { 
      doItOnce2 = true;
      obstacle2+=1;
      hit2+=1;
//      println(obstacle2);
  }
  
   if (cop2Button.pressed && doItOnce2 == false) { 
      doItOnce2 = true;
      obstacle2+=1;
      cop2+=1;
//      println(obstacle2);
  }
  
  if (miss2Button.pressed && doItOnce2 == false) { 
      doItOnce2 = true;
      miss2+=1;
//      println("miss");
  }
  
  if (hit2Button.pressed == false && cop2Button.pressed == false && miss2Button.pressed == false){
    doItOnce2 = false;
  }
  
  
  if (obstacle1 == 5 && team1Done == false){
    time1 = timer;
    team1Done = true;
  }
  
  if (obstacle2 == 5 && team2Done == false){
    time2 = timer;
    team2Done = true;
  }
  
  //To Cap our obstacles at 5 for the demo
  if (obstacle1 > 5){
    obstacle1 = 5;
  }
  
  if (obstacle2 > 5){
    obstacle2 = 5;
  }

//Go to the finish screen when we're done
  if ((team1Done) && (team2Done)){
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
      startBool = false;
      finishBool = true;
  }
 
}
