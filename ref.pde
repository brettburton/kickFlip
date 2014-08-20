void refScreen(){
  


//TEAM 1
  textSize(style.h1);
  text("Team 1", style.col2, style.row1);
  text("Obstacle # " + obstacle1, style.col2, style.row2);
  hit1Button.display(style.col2, style.row4, hit1Button.w3, hit1Button.ht3, "HIT", style.h3);
  hit1Button.update();
  
  miss1Button.display(style.col2,style.row6, miss1Button.w3,miss1Button.ht3,"MISS", style.h3);
  miss1Button.update();

  cop1Button.display(style.col2,style.row8, cop1Button.w3,cop1Button.ht3,"COPOUT", style.h3);
  cop1Button.update();
  
  textSize(style.h1);
  text("Team 2", style.col6, style.row1);
  text("Obstacle # " + obstacle2, style.col6, style.row2);
  hit2Button.display(style.col6, style.row4, hit2Button.w3, hit2Button.ht3, "HIT", style.h3);
  hit2Button.update();
  
  miss2Button.display(style.col6,style.row6, miss2Button.w3,miss2Button.ht3,"MISS", style.h3);
  miss2Button.update();

  cop2Button.display(style.col6,style.row8, cop2Button.w3,cop2Button.ht3,"COPOUT", style.h3);
  cop2Button.update();
  
  
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
  
  //To Cap our obstacles at 5 for the demo
  if (obstacle1 > 5){
    obstacle1 = 5;
  }
  
  if (obstacle2 > 5){
    obstacle2 = 5;
  }

//Go to the finish screen when we're done
if ((obstacle1 > 4) && (obstacle2 > 4)){
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
    startBool = false;
    finishBool = true;
}
 
}
