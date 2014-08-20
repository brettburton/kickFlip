void localScreen()

{

  smallmap.resize(width, height);
  lesDButton.display(700, 650, 30,30);
  lesDButton.update();
  image(smallmap, 0, 0);
 


 
   if (lesDButton.pressed) { //the button that is the bigmap image
    secondBool =false;
    mainBool = false;
    mapBool = false;
    skateBool= false; 
    localBool = false;
    lesDBool = true;
  }
}



