public void refScreen(){
  
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
      readyBool = false;
      readyBool2 = false;
    
    
  if(sw.running == false){
  sw.stop();
  sw.start(); //start the timer
  }
  
  String timer = nf(120 - sw.second(), 3);
  textSize(style.h2);
  text("TIMER: "+timer, style.centerX, style.row7);
    
   if (team1or2 == false){
    textSize(style.h1);
    //text(teamname1.saved, style.centerX, style.row1); 
    text("Team 1", style.centerX, style.row1);
    text("Obstacle # " + obstacle1, style.centerX, style.row2);
    team1Run();
   }
   
   if (team1or2 == true){
    textSize(style.h1); 
//    text(teamname2.saved, style.centerX, style.row1);
    text("Team 2", style.centerX, style.row1);
    text("Obstacle # " + obstacle2, style.centerX, style.row2);
    team2Run();
   }
   
  
}

//---------------------------------- 

 public void team1Run(){
   
  hit1Button.display(style.centerX, style.row4, hit1Button.w3, hit1Button.ht4, "HIT", style.h3);
  hit1Button.update();
  
  miss1Button.display(style.centerX,style.row5, miss1Button.w3,miss1Button.ht4,"MISS", style.h3);
  miss1Button.update();

  cop1Button.display(style.centerX,style.row6, cop1Button.w3,cop1Button.ht4,"COPOUT", style.h3);
  cop1Button.update();
  
    //TEAM 1 BUTTON LOGIC
   if (hit1Button.pressed && doItOnce1 == false) { 
      doItOnce1 = true;
      team1trickPoints[obstacle1-1]=team1tempPoints[obstacle1-1];  //the stupid -1 math here is because obstacle1 starts at 1 for display purposes
      obstacle1+=1;
      hit1+=1;
//      println(obstacle1);
  }
  
   if (cop1Button.pressed && doItOnce1 == false) { 
      doItOnce1 = true;
      team1trickPoints[obstacle1-1]+=40;
      obstacle1+=1;
      cop1+=1;
//      println(obstacle1);
  }
  
  if (miss1Button.pressed && doItOnce1 == false) { 
      doItOnce1 = true;
      team1trickPoints[obstacle1-1]-=10;
      miss1+=1;
//      println("miss");
  }
  
  if (hit1Button.pressed == false && cop1Button.pressed == false && miss1Button.pressed == false){
      doItOnce1 = false;
  }
  
    
  if (obstacle1 == 5 && team1Done == false){
    time1 = nf(120 - sw.second(), 3);
    timeFinal1 = 120 - sw.second();
    team1Done = true;
  } 
  
  //To Cap our obstacles at 5 for the demo
  if (obstacle1 > 5){
    obstacle1 = 5;
  }


//Go to the finish screen when we're done
  if (team1Done){
//      team1or2 = true;
    sw.stop();
    readyBool2 = true;
  }
  
  if(sw.running == false){
  sw.start(); //start the timer
  }
  

  String timer = nf(120 - sw.second(), 3);
  textSize(style.h2);
  text("TIMER: "+timer, style.centerX, style.row7);
  
 }
 

 
 //---------------------------------- 

 public void team2Run(){
   
  hit2Button.display(style.centerX, style.row4, hit2Button.w3, hit2Button.ht4, "HIT", style.h3);
  hit2Button.update();
  
  miss2Button.display(style.centerX,style.row5, miss2Button.w3,miss2Button.ht4,"MISS", style.h3);
  miss2Button.update();

  cop2Button.display(style.centerX,style.row6, cop2Button.w3,cop2Button.ht4,"COPOUT", style.h3);
  cop2Button.update();
  
    //TEAM 1 BUTTON LOGIC
   if (hit2Button.pressed && doItOnce2 == false) { 
      doItOnce2 = true;
      team2trickPoints[obstacle2-1]=team2tempPoints[obstacle2-1];  //the stupid -1 math here is because obstacle2 starts at 1 for display purposes
      obstacle2+=1;
      hit2+=1;
//      println(obstacle1);
  }
  
   if (cop2Button.pressed && doItOnce2 == false) { 
      doItOnce2 = true;
      team2trickPoints[obstacle2-1]+=40;
      obstacle2+=1;
      cop2+=1;
//      println(obstacle1);
  }
  
  if (miss2Button.pressed && doItOnce2 == false) { 
      doItOnce2 = true;
      team2trickPoints[obstacle2-1]-=10;
      miss2+=1;
//      println("miss");
  }
  
  if (hit2Button.pressed == false && cop2Button.pressed == false && miss2Button.pressed == false){
      doItOnce2 = false;
  }
  
    
  if (obstacle2 == 5 && team2Done == false){
    time2 = nf(120 - sw.second(), 3);
    timeFinal2 = 120 - sw.second();
    team2Done = true;
  }
  
  
  //To Cap our obstacles at 5 for the demo
  if (obstacle2 > 5){
    obstacle2 = 5;
  }

//Go to the finish screen when we're done
  if (team2Done){
      finishBool = true;
  }
  
  
 //--------------- 
 

  
 }
  
  
 

 


