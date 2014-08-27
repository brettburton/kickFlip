
public void lesScreen()

{
  textAlign(CENTER);
  textSize(style.h3);
  text("L.E.S.", style.centerX, style.row1);
  leslayout.resize(width, 0);
  image(leslayout, 0, style.row2);
//  fill(0);
//  text("directions will go here", width/4, height/2);
  
  
                    //xpos, ypos, width, height, text, textSize
  textAlign(CENTER);
  checkButton.display(style.centerX,style.row6, checkButton.w3,checkButton.ht4,"checkin", style.h3);
  checkButton.update();
  
  if (checkButton.pressed) { //the button that is the bigmap image
    secondBool =false;
    mainBool = false;
    mapBool = false;
    skateBool= false; 
    localBool = false;
    lesDBool = false;
    checkBool = true;
  }
  
}
