void finishScreen(){
  
  
  textSize(style.h2);
  text("Team 1", style.col2, style.row1);
  text("Hits " + hit1, style.col2, style.row3);
  text("Misses " + miss1, style.col2, style.row4);
  text("Cop Outs " + cop1, style.col2, style.row5);
  
  
  text("Team 2", style.col6, style.row1);
  text("Hits " + hit2, style.col6, style.row3);
  text("Misses " + miss2, style.col6, style.row4);
  text("Cop Outs " + cop2, style.col6, style.row5);
  
  
}
