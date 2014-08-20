//-------------------------------------

void mapScreen()
{
  boroughButton.display(0,0, width,height);
  boroughButton.update();
  background(80,80,80);
  image(bigmap, 0, 0);
 
   if (boroughButton.pressed) { //the button that is the bigmap image
    secondBool =false;
    mainBool = false;
    mapBool = false;
    skateBool= false; 
    localBool = true;
  }
  
}
  
 

