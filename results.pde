 void finishScreen(){
  
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
      refBool = false;
      readyBool = false;
      readyBool2 = false;

    
      
  
  textSize(style.h2);
  text(teamname1.saved, style.col2, style.row1);
  if (total1Once == false){
    for (int i=0; i<4; i++){
      totalScore1 += team1trickPoints[i];
    }
  total1Once = true;
  }
  
  if (timeFinal1 > 0){
  text("Score " + totalScore1, style.col2, style.row2);
  text("Time " + time1, style.col2, style.row3);
  text("Hits " + hit1, style.col2, style.row4);
  text("Misses " + miss1, style.col2, style.row5);
  text("Cop Outs " + cop1, style.col2, style.row6);
  }
  
  if (timeFinal1 < 1){
  text("Score ZERO", style.col2, style.row2);
  text("Time TIMED OUT", style.col2, style.row3);
  text("Hits " + hit1, style.col2, style.row4);
  text("Misses " + miss1, style.col2, style.row5);
  text("Cop Outs " + cop1, style.col2, style.row6);
  }
  
  text(teamname2.saved, style.col6, style.row1);
    if (total2Once == false){
    for (int i=0; i<4; i++){
      totalScore2 += team2trickPoints[i];
    }
  total2Once = true;
  }
  
  if (timeFinal2 > 0){
  text("Score " + totalScore2, style.col6, style.row2);
  text("Time " + time2, style.col6, style.row3);
  text("Hits " + hit2, style.col6, style.row4);
  text("Misses " + miss2, style.col6, style.row5);
  text("Cop Outs " + cop2, style.col6, style.row6);
  }
  
  if (timeFinal2 < 1){
  text("Score ZERO", style.col6, style.row2);
  text("Time TIMED OUT", style.col6, style.row3);
  text("Hits " + hit2, style.col6, style.row4);
  text("Misses " + miss2, style.col6, style.row5);
  text("Cop Outs " + cop2, style.col6, style.row6);
  }
  
}
