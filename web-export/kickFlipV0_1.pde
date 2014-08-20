

//DECLARE VARIABLES HERE



StopWatchTimer sw; //this is one instance if stopWatch class
Style style;

boolean mainBool = true;
boolean secondBool = false;
boolean skateBool = false; //not in demo mode
boolean mapBool = false; 
boolean localBool= false;

PImage bigmap;
PImage smallmap;
PImage leslayout;

button mainButton;
button mapButton; 
button skateButton; 
button boroughButton; 


//the stuff for LES
boolean lesDBool = false; //for the directions
boolean checkBool = false; //checkin at the location
boolean loginBool = false; //login the team names
boolean team1Bool = false; //team1 players and difficulty selected
boolean team2Bool = false; //team2 players and difficulty selected
boolean startBool = false; //start the race!
button lesDButton; //to get to the direction page
button checkButton;
button loginButton;
button team1Button;
button team2Button;
button startButton;

//the stuff for the REF screen
button hit1Button;
button hit2Button;
button miss1Button;
button miss2Button;
button cop1Button;
button cop2Button;
int obstacle1 = 0;
int obstacle2 = 0;
int hit1 = 0; //for keeping track of totals for hits, misses and cop outs
int hit2 = 0;
int miss1 = 0;
int miss2 = 0;
int cop1 = 0;
int cop2 = 0;
boolean doItOnce1 = false; //these are so our buttons on the ref page don't turbo fire
boolean doItOnce2 = false;
boolean finishBool = false;



//-------------------------------------

//SETUP RUNS ONCE

void setup(){

//1136×640 iphone screen
size(640,1136);
smooth();

style = new Style();
style.scheme(2);

background(style.c1);

sw = new StopWatchTimer();

bigmap = loadImage("bigmap.jpg");
smallmap= loadImage("smallmap.jpg");
leslayout= loadImage("les.jpg");
 
mainButton = new button(); //the word kickflip
mapButton = new button(); 
skateButton = new button(); 
boroughButton = new button();
checkButton = new button();

//LES stuff
lesDButton = new button();
loginButton = new button();
team1Button = new button();
team2Button = new button();
startButton =new button();

//REF stuff
hit1Button = new button();
hit2Button = new button();
miss1Button = new button();
miss2Button = new button();
cop1Button = new button();
cop2Button = new button();

}




//-------------------------------------

//DRAW RUNS REPEATEDLY

void draw(){
  
  background(style.c1);
  fill(style.c2);

 if (mainBool){
  mainScreen();
 }
 
  if (secondBool){
//    localScreen();//For the demo, we skip right to the local map
    lesScreen();
//  secondScreen();
 }
 
// if (lesDBool){
//   lesScreen();
// }
 
 if(checkBool){
  loginScreen();
 }
 
  if(loginBool){
//  team1Screen(); //skipping the team name enter screens for the time being
  obstaclesScreen();
 }
 
// if(team1Bool){
//  team2Screen();
// }
// 
//  if(team2Bool){
//  obstaclesScreen();
// }
 
  if(startBool){
  refScreen();
 }
 
 if(finishBool){
   finishScreen();
 }
 

 
 //Again, for the demo, we skip right to the local map
//  if (mapBool){
//  mapScreen();
// }
 
//  if (localBool){
//localScreen();
// }
// 
  
}

//-------------------------------------



void lesScreen()

{
  textAlign(CENTER);
  textSize(style.h3);
  text("L.E.S.", style.centerX, style.row2);
  leslayout.resize(width, 0);
  image(leslayout, 0, style.row3);
//  fill(0);
//  text("directions will go here", width/4, height/2);
  
  
                    //xpos, ypos, width, height, text, textSize
  textAlign(CENTER);
  checkButton.display(style.centerX,style.row8, checkButton.w3,checkButton.ht4,"checkin", style.h3);
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
void loginScreen(){

  //brett will add dropdown
  
 textSize(style.h3);
 text("team 1 name", style.centerX, style.row3);
 text("team 2 name", style.centerX, style.row5);
 
  loginButton.display(style.centerX, style.row7, loginButton.w3, loginButton.ht4, "enter", style.h3);
  loginButton.update();
  
   if (loginButton.pressed) { //the button that is the bigmap image
    secondBool =false;
    mainBool = false;
    mapBool = false;
    skateBool= false; 
    localBool = false;
    lesDBool = false;
    checkBool = false;
    loginBool = true;
  }
 
}


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




//-------------------------------------


void mainScreen(){
  
  fill(style.c2);
  //----button---//
  textAlign(CENTER, CENTER);
  //rectMode(CENTER);
//  mainButton.display(style.centerX, style.row2, mainButton.w6,mainButton.ht6);
  mainButton.display(style.centerX, style.row2, mainButton.w6,mainButton.ht6, "kickflip", style.h6);
  mainButton.update();
  //---button---//
 
 //text("word", 10, 60);

 textSize(style.p);
 textAlign(CENTER);
 text("RULES: Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", style.col1, style.row4, style.col6, style.row4 ); //write rules here
  
  if (mainButton.pressed) { 
    secondBool =true;
    mainBool = false;
}

}
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
  
 

void obstaclesScreen(){

  //brett will add dropdown
  

 
 textSize(style.h3);
 text("Team 1", style.col2, style.row2);
 textSize(style.p);
 text("Order of course obstacles", style.col2, style.row3);
 text("Trick Dropdown goes here", style.col2, style.row4);
 
 textSize(style.h3);
 text("Team 2", style.col6, style.row2);
 textSize(style.p);
 text("Order of course obstacles", style.col6, style.row3);
 text("Trick Dropdown goes here", style.col6, style.row4);
 
  startButton.display(style.centerX, style.row6, startButton.w3,startButton.ht2,"Skate!", style.h3);
  startButton.update();
  
   if (startButton.pressed) { //the button that is the bigmap image
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
    startBool = true;
  }
 
}
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






class Style{
  
color c1;
color c2;
color c3;
color c4;
color c5;
color c6;

int h0;
int h1;
int h2;
int h3;
int h4;
int h5;
int h6;


int p;

int centerX;
int centerY;

int col1; 
int col2;
int col3;
int col4;
int col5;
int col6;
int col7;
int col8;

int row1;
int row2;
int row3;
int row4;
int row5;
int row6;
int row7;
int row8;
  
Style() {
  
  //all initially grey
  c1 = color(80,80,80);
  c2 = color(80,80,80);
  c3 = color(80,80,80);
  c4 = color(80,80,80);
  c5 = color(80,80,80);
  c6 = color(80,80,80);

  h0 = int(width/25);
  h1 = int(width/20);
  h2 = int(width/16); 
  h3 = int(width/13);
  h4 = int(width/10);
  h5 = int(width/6.6);
  h6 = int(width/5);
  
  p = int(width/35);
  
  centerX = int(width/2);
  centerY = int(width/2);
  
  col1 = int(width/8);
  col2 = int(width/4);
  col3 = int(width/2.66);
  col4 = int(width/2);
  col5 = int(width/1.6);
  col6 = int(width/1.33);
  col7 = int(width/1.14);
  col8 = int(width);
  
  row1 = int(width/8);
  row2 = int(width/4);
  row3 = int(width/2.66);
  row4 = int(width/2);
  row5 = int(width/1.6);
  row6 = int(width/1.33);
  row7 = int(width/1.14);
  row8 = int(width);
  
}

void scheme(int sch_) {
  
  if (sch_ == 1){
  c1 = color(79,87,170);
  c2 = color(143,0,46); 
  c3 = color(69,72,87);
  c4 = color(190,226,231);
  c5 = color(116,105,255);
  c6 = color(255,235,135);
  }
  
  if (sch_ == 2){
  c1 = color(75,146,253);
  c2 = color(255,184,73); 
  c3 = color(242,48,162);
  c4 = color(199 ,247,22);
  c5 = color(255,20,14);
  c6 = color(14,93,216);
  }
  
}
  
}
void team1Screen(){


  

 text("Team 1", width/2, height/2-150);
 text("Select Skaters", width/2, height/2 - 100);
 text("Select Difficulty", width/2, height/ 2 - 200);
 
 
  team1Button.display(width/2, height/2, 200,100,"enter", 30);
  team1Button.update();
  
   if (team1Button.pressed) { //the button that is the bigmap image
    secondBool =false;
    mainBool = false;
    mapBool = false;
    skateBool= false; 
    localBool = false;
    lesDBool = false;
    checkBool = false;
    loginBool = false;
    team1Bool = true;
  }
 
}
void team2Screen(){



 text("Team 2", width/2, height/2-150);
 text("Select Skaters", width/2, height/2 - 100);
 text("Select Difficulty", width/2, height/ 2 - 200);
 
 
  team2Button.display(width/2, height/2, 200,100,"enter", 30);
  team2Button.update();
  
   if (team2Button.pressed) { //the button that is the bigmap image
    secondBool =false;
    mainBool = false;
    mapBool = false;
    skateBool= false; 
    localBool = false;
    lesDBool = false;
    checkBool = false;
    loginBool = false;
    team1Bool = false;
    team2Bool = true;
  }
 
}
// =================================================================
// I stole this timer class



// =================================================
// classes

class StopWatchTimer {
  
  //180000 
  int startTime = 180000, stopTime = 0;
  boolean running = false;
  
  
  void start() {
   // startTime = millis();//300
    running = true;
  }
  
  void stop() {
    stopTime = millis();
    running = false;
  }
  
  int getElapsedTime() {
    int elapsed;
    
    if (running) {
      //elapsed = (millis() -startTime);  //i switched these
      elapsed = (startTime - millis()  );
    }
    
    else {
      elapsed = (stopTime - startTime);
    }
    return elapsed;
  }
  
  int second() {
    return (getElapsedTime() / 1000) % 60;
  }
  int minute() {
    return (getElapsedTime() / (1000*60)) % 60;
  }
  int hour() {
    return (getElapsedTime() / (1000*60*60)) % 24;
  }
   
  void time() {
  
  fill(#000000);
  textAlign(CENTER);
  // textFont(words, 50);
  //
  //  text(second()+ , 350, 175);
  //
  //  text(":", 300, 175);
  //
  //  text(minute(), 250, 175);
  //
  //  text(":", 200, 175);
  //  text(hour(), 150, 175);
  text(nf(sw.hour(), 2)+":"+nf(sw.minute(), 2)+":"+nf(sw.second(), 2), 150, 175);
}

}



