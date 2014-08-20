
//-------------------------------------

class button{

  int xpos;
  int ypos;
  int w;
  int h;
  
  int w1;
  int w2;
  int w3;
  int w4;
  int w5;
  int w6;
  
  int ht1;
  int ht2;
  int ht3;
  int ht4;
  int ht5;
  int ht6;
  
  
  boolean pressed = false;
//  boolean rectButt = true;
//  boolean textButt = false;
//  boolean imageButt = false;
  
  button(){
    
  w1 = int(width/8);
  w2 = int(width/4); 
  w3 = int(width/2.66);
  w4 = int(width/2);
  w5 = int(width/1.6);
  w6 = int(width/1.2);
  
  ht1 = int(width/20);
  ht2 = int(width/16); 
  ht3 = int(width/13);
  ht4 = int(width/10);
  ht5 = int(width/6.6);
  ht6 = int(width/5);  
   
  }
  
//-------------------------------------
  
void display(int xpos_, int ypos_, int w_, int h_){
  
  if (pressed){
  fill(255);
  }
  else
  {fill (0);
  
  }
 
  //rectMode(CENTER);
  stroke(0);
  noFill();
  
  xpos = xpos_;
  ypos = ypos_;
  w = w_;
  h = h_;
  
  int xShift = int(xpos - ((xpos+w - xpos) / 2));  //this is some math weirdness to center the button
  int yShift = int(ypos - ((ypos+h - ypos) / 2));  //rectMode won't work, because the xpos and ypos need to actually move in order for the button to actually work.
  
  rect(xShift, yShift, w, h);
  

  
}

//-------------------------------------
  
void display(int xpos_, int ypos_, int w_, int h_, String txt_, int sz_){
  
//if (pressed){
//  fill(255);
//  }
//  else
//  {fill (0);
//  
//  }  


textSize(sz_);
text(txt_, xpos_, ypos_);


  xpos = xpos_;
  ypos = ypos_;
  w = w_;
  h = h_;
    
}


//-------------------------------------

void update(){
  
  //(xpos+w - xpos) / 2
  
  int xShift = int(xpos - ((xpos+w - xpos) / 2));
  int yShift = int(ypos - ((ypos+h - ypos) / 2));  
  
    if (mouseX >= xShift && mouseX <= xShift+w && 
      mouseY >= yShift && mouseY <= yShift+h && mousePressed) {
      pressed = true;

    }
    
    else {
      pressed = false;
    }
    
}

}




