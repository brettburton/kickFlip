//-------------------------------------

void secondScreen()

{

  
  //---skate button--//
//  skateButton.display(width/2-30,height/2-30, 90,30, "Skate", 32);
//  skateButton.update();
  
  
  //---map button--//
  
  mapButton.display(width/2-25,height/2-100, 90,30, "Map", 32);
  mapButton.update();
  
  
  
  
 
  
   if (skateButton.pressed) { //the button that says skate
    secondBool =false;
    mainBool = false;
    mapBool = false;
    skateBool= true; 
  }
  
   if (mapButton.pressed) { //the button that says map
    secondBool =false;
    mainBool = false;
    skateBool= false; 
    mapBool = true; 
}
}
