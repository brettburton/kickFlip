

//DECLARE VARIABLES HERE

//Dropdown Stuff
import controlP5.*;
public ControlP5 cp5;
public DropdownList d1, d2, d3, d4;
//

public JSONArray flipIns;
public JSONArray flipOuts;
public JSONArray grinds;
public JSONArray stances;

public JSONObject flipIn;
public JSONObject grind;
public JSONObject flipOut;
public JSONObject stance;
  
public Input teamname1;
public Input teamname2;

public StopWatchTimer sw;
public Style style;

public JSONObject teamNames;

public boolean mainBool = true;
public boolean secondBool = false;
public boolean skateBool = false; //not in demo mode
public boolean mapBool = false; 
public boolean localBool = false;
public boolean readyBool = false; 
public boolean readyBool2 = false; 

public PImage bigmap;
public PImage smallmap;
public PImage leslayout;
public PImage logo;

public button mainButton;
public button readyButton1;
public button readyButton2;
public button mapButton; 
public button skateButton; 
public button boroughButton; 


//the stuff for LES
public boolean lesDBool = false; //for the directions
public boolean checkBool = false; //checkin at the location
public boolean loginBool = false; //login team 1's name
public boolean loginBool2 = false;//login team 2's name
public boolean team1Bool = false; //team1 players and difficulty selected
public boolean team2Bool = false; //team2 players and difficulty selected
public boolean refBool = false; //start the race!



public button lesDButton; //to get to the direction page
public button checkButton;
public button loginButton;
public button team1Button;
public button team2Button;
public button enterButton; //enter the tricks

//the stuff for the REF screen
public button hit1Button;
public button hit2Button;
public button miss1Button;
public button miss2Button;
public button cop1Button;
public button cop2Button;
public int obstacle1 = 1;
public int obstacle2 = 1;
public int hit1 = 0; //for keeping track of totals for hits, misses and cop outs
public int hit2 = 0;
public int miss1 = 0;
public int miss2 = 0;
public int cop1 = 0;
public int cop2 = 0;
public String time1; //finish time for team1
public String time2; //finish time for team2
public boolean doItOnce = false;
public boolean doItOnce1 = false; //these are so our buttons on the ref page don't turbo fire
public boolean doItOnce2 = false;
public boolean finishBool = false;
public boolean team1Done = false;//we use this to keep track of when team 1 is done;
public boolean team2Done = false;//we use this to keep track of when team 2 is done;
public boolean team1or2 = false; //if false team 1 if true team 2 

//for DropDowns
public int dropVal;  //store the selection in the drop box
public String dropName;  //store which dropbox

//holds the potential points for each trick
public int[] team1tempPoints = {0,0,0,0};// 16?
public int[] team2tempPoints = {0,0,0,0};


//holds the final points for each trick
public int[] team1trickPoints = {0,0,0,0}; //16?
public int[] team2trickPoints = {0,0,0,0};
public int[] componentPoints = {0,0,0,0}; //this is for each part of each trick In, grind, out and stance

public int trickNum = 1;//which trick are we entering
//-------------------------------------

//SETUP RUNS ONCE

public void setup(){

//1136×640 iphone screen
//size(640,1136);
size(400,710); //iPhone aspect ratio but not full screen size
smooth();


flipIns = loadJSONArray("flip.json");
flipOuts = loadJSONArray("flip.json");
grinds = loadJSONArray("grind.json");  
stances = loadJSONArray("stance.json");  

//DropDown Stuff
cp5 = new ControlP5(this);
d1 = cp5.addDropdownList("trickIn-d1");
d2 = cp5.addDropdownList("trick-d2");
d3 = cp5.addDropdownList("trickOut-d3");
d4 = cp5.addDropdownList("stance-d4");
//

teamNames = new JSONObject();

teamname1 = new Input();
teamname2 = new Input();

style = new Style();
style.scheme(2);

dropDownSetup();

background(style.c1);

sw = new StopWatchTimer();

bigmap = loadImage("bigmap.jpg");
smallmap = loadImage("smallmap.jpg");
leslayout = loadImage("les.jpg");
logo = loadImage("logo.png");
 
mainButton = new button(); //the word kickflip
mapButton = new button(); 
skateButton = new button(); 
boroughButton = new button();
checkButton = new button();
readyButton1 = new button();
readyButton2 = new button();

//LES stuff
lesDButton = new button();
loginButton = new button();
team1Button = new button();
team2Button = new button();
enterButton = new button();

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

public void draw(){
  
  background(style.c1);
  fill(style.c2);

 if (mainBool){
  mainScreen();
 }
 
  if (secondBool){
  lesScreen();
 }
 
 if(checkBool){
  loginScreen();
 }
 
  if(loginBool){
  loginScreen2();
 }
 
   if(loginBool2){
  obstaclesScreen();
 }
 
 if(readyBool){
  readyScreen();
 }
 
 if (refBool){
  refScreen();
 }
 
 if(readyBool2){
   readyScreen2();
 }
 
 if(finishBool){
   finishScreen();
 }
 
//uncomment these to show and toggle the style grid
// style.showGrid();
// style.toggleGrid();
 
}

 //-------------------------------------

public void keyPressed() {
  
   if(checkBool){
   teamname1.input(13);
   }
   
   if(loginBool){
   teamname2.input(13);
   }
   
}


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
public void loginScreen(){

 stroke(0);//had to add this because we use noStroke in the button class to hide the button outline.
 //without this our text boxes look weird.
  
 textSize(style.h3);
 text("Team 1 Name", style.centerX, style.row2);
 fill(255);
 rectMode(CENTER);
 rect(style.centerX, style.row3, loginButton.w5, loginButton.ht4);
 fill(0);
 textAlign(CENTER, CENTER);
 teamname1.display(style.centerX, style.row3);
 
 //JSON SAVE STUFF
 teamNames.setString("Name1", teamname1.saved);
 saveJSONObject(teamNames, "data/teamNames.json");


 
 if (teamname1.enter){
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

public void loginScreen2(){

  //brett will add dropdown
  
 textSize(style.h3);
 text("Team 2 Name", style.centerX, style.row2);
 fill(255);
 rectMode(CENTER);
 rect(style.centerX, style.row3, loginButton.w5, loginButton.ht4);
 fill(0);
 textAlign(CENTER, CENTER);
 teamname2.display(style.centerX, style.row3);


 //JSON SAVE STUFF
 teamNames.setString("Name2", teamname2.saved);
 saveJSONObject(teamNames, "data/teamNames.json");

 if (teamname2.enter){
    secondBool =false;
    mainBool = false;
    mapBool = false;
    skateBool= false; 
    localBool = false;
    lesDBool = false;
    checkBool = false;
    loginBool = false;
    loginBool2 = true;
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
 // stroke(0);
  noStroke();
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






public void customize(DropdownList ddl) {
  // a convenience function to customize a DropdownList
  ddl.setBackgroundColor(color(190));
  ddl.setSize(200,200);
  ddl.setItemHeight(30);//20
  ddl.setBarHeight(30);//15
//  ddl.captionLabel().set("dropdown");
  ddl.captionLabel().style().marginTop = 3;
  ddl.captionLabel().style().marginLeft = 3;
  ddl.valueLabel().style().marginTop = 3;
  
  //ddl.scroll(0);
  ddl.setColorBackground(color(60));
  ddl.setColorActive(color(255, 128));
}

//-----------------------------------------------

public void controlEvent(ControlEvent theEvent) {

  if (theEvent.isGroup()) {

    dropName = theEvent.getGroup().getName();
    dropVal = int(theEvent.getGroup().getValue());
    
 } 
  
  if(dropName == "trickIn-d1"){
    flipIn = flipIns.getJSONObject(dropVal);
    componentPoints[0] = int(flipIn.getInt("points"));
  }
  if(dropName == "trick-d2"){
    grind = grinds.getJSONObject(dropVal);
    componentPoints[1] = int(grind.getInt("points"));
  }
  if(dropName == "trickOut-d3"){
    flipOut = flipOuts.getJSONObject(dropVal);
    componentPoints[2] = int(flipOut.getInt("points"));
  }
  if(dropName == "stance-d4"){
    stance = stances.getJSONObject(dropVal);
    componentPoints[3] = int(stance.getInt("points"));
//    println("stance");
//    println(team1tempPoints[0]);
  }
  
  else if (theEvent.isController()) {
  //  println("event from controller : "+theEvent.getController().getValue()+" from "+theEvent.getController());
  }
  
 
  
  
  
}


//-----------------------------------------------

public void dropDownSetup(){
 d1.setPosition(style.col2, style.row3);
 d1.captionLabel().set("Flip In");
 customize(d1);
  for (int i = 0; i < flipIns.size(); i++) {
    
     flipIn = flipIns.getJSONObject(i);
     
     int id = flipIn.getInt("id");
     String name = flipIn.getString("name");
     int points = flipIn.getInt("points");
     d1.addItem(name, i);
     
   //  println(id + ", " + name + ", " + points);
     
  }
 
 d2.setPosition(style.col2, style.row4);
 d2.captionLabel().set("Grind");
 customize(d2);
     for (int i = 0; i < grinds.size(); i++) {
    
     grind = grinds.getJSONObject(i);
     
     int id = grind.getInt("id");
     String name = grind.getString("name");
     int points = grind.getInt("points");
     d2.addItem(name, i);
  }
  
 
 d3.setPosition(style.col2, style.row5);
 d3.captionLabel().set("Flip Out");
 customize(d3);
 for (int i = 0; i < flipOuts.size(); i++) {
    
     flipOut = flipOuts.getJSONObject(i);
     
     int id = flipOut.getInt("id");
     String name = flipOut.getString("name");
     int points = flipOut.getInt("points");
     d3.addItem(name, i);
 }
 
 d4.setPosition(style.col2, style.row6);
 d4.captionLabel().set("Stance");
 customize(d4);
     for (int i = 0; i < stances.size(); i++) {
    
     stance = stances.getJSONObject(i);
     
     int id = stance.getInt("id");
     String name = stance.getString("name");
     int points = stance.getInt("points");
     d4.addItem(name, i);
     }
  
  d1.hide();
  d2.hide();
  d3.hide();
  d4.hide();  
     
} 

class Input{
  
String typing = "";    // Variable to store text currently being typed
String saved = "";    // Variable to store saved text when return is hit
int keyCount = typing.length();
int buffSize = 25;
int x = 0;
int y = 0;
boolean enter = false;

// input(){
//   
// }
  
void display(int x_, int y_){
  
  // Display everything
  x = x_;
  y = y_;
  
  text(typing,x,y);
  keyCount = typing.length();
  
}


void input(int buffSize_) {
  
  buffSize = buffSize_;
    
    // If the return key is pressed, save the String and clear it
  if (key == '\n' ) {
    saved = typing;
    enter = true;
    // A String can be cleared by setting it equal to ""
    typing = ""; 
  } else {
    // Otherwise, concatenate the String
    // Each character typed by the user is added to the end of the String variable.

    
    //This next part lets us delete mistyped characters
   if ((keyCode == BACKSPACE) && (keyCount > 0)) {
        typing = typing.substring(0, typing.length() - 1);
        } 
   else
     if ((key != CODED) && (keyCount < buffSize)) typing += key; 
      }  
  
  }

}
//-------------------------------------


public void mainScreen(){
  
  fill(style.c2);
  //----button---//
  textAlign(CENTER, CENTER);
  //rectMode(CENTER);
//  mainButton.display(style.centerX, style.row2, mainButton.w6,mainButton.ht6);

  //mainButton.display(style.centerX, style.row2, mainButton.w6, mainButton.ht6, "RELAY RUSH", style.h5);
  mainButton.display(style.centerX, style.row1, width, height);
  mainButton.update();
  
  logo.resize(width, 0);
  image(logo, 0, style.row1);
  //---button---//
 
 //text("word", 10, 60);

 textSize(style.p);
 textAlign(CENTER);
 
 text("RULES: Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", style.col1, style.row6, style.col6, style.row6 ); //write rules here
  
  if (mainButton.pressed) { 
    secondBool =true;
    mainBool = false;
}

}
public void obstaclesScreen(){

// dropDraw();
  
// fillJSON();

   secondBool =false;
    mainBool = false;
    mapBool = false;
    skateBool= false; 
    localBool = false;
    lesDBool = false;
    checkBool = false;
    loginBool = false;
//    loginBool2 = false;
    team1Bool = false;
    team2Bool = false;
   // startBool = true;
 

 textSize(style.h3);
 
if (team1or2 == false){
 text(teamname1.saved, style.centerX, style.row1);
 }
 
if (team1or2 == true){
 text(teamname2.saved, style.centerX, style.row1);
 }
 
 text("Obstacle "+ trickNum, style.centerX, style.row2);
 
 d1.show();
 d2.show();
 d3.show();
 d4.show();
 
 
 
  enterButton.display(style.centerX, style.row7, enterButton.w3,enterButton.ht2,"Enter", style.h3);
  enterButton.update();
  
   if (enterButton.pressed && doItOnce == false) { //the button that is the bigmap image
    if (team1or2 == true){
      trickNum += 1;
    }
    team1tempPoints[0] = componentPoints[0] + componentPoints[1] + componentPoints[2] + componentPoints[3];
    println(team1tempPoints[0]);
    team1or2 = !team1or2;
    doItOnce = true;
    println (team1or2);
    
    if (trickNum == 5){
     team1or2 = false;
     readyBool = true;
     //startBool = true; 
    }
    
  }
  
  if (enterButton.pressed == false) {
    doItOnce = false;
  }
  
  
  
  //-----------------------
 // SHOWING AND HIDING DROPDOWNS
 
 //d1
 if (d1.isOpen()){
   d2.hide();
   d3.hide();
   d4.hide();
 }
 
 //d2
 if (d2.isOpen()){
   d3.hide();
   d4.hide();
 }
 
 //d3
 if (d3.isOpen()){
   d4.hide();
 }
 
 
 if (d1.isOpen() == false && d2.isOpen() == false && d3.isOpen() == false && d4.isOpen() == false){
   d1.show();
   d2.show();
   d3.show();
   d4.show();
 }
 
}
public void readyScreen(){
  
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
      
    d1.remove(); //this removes our dropdowns
    d2.remove();
    d3.remove();
    d4.remove();
  
  
 textSize(style.h4);
 textAlign(CENTER);
 text("Team 1 Ready", style.centerX, style.row2); //write rules here
  
  readyButton1.display(style.centerX, style.row5, readyButton1.w5, readyButton1.ht5, "GO!", style.h6);
  readyButton1.update(); 
  
  if (readyButton1.pressed) { 
    refBool = true;
}
  
}
public void readyScreen2(){
  
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
      refBool = false;
   
  
 textSize(style.h4);
 textAlign(CENTER);
 text("Team 2 Ready", style.centerX, style.row2); //write rules here
  
  readyButton2.display(style.centerX, style.row5, readyButton1.w5, readyButton1.ht5, "GO!", style.h6);
  readyButton2.update(); 
  
  if (readyButton2.pressed) { 
    team1or2 = true;
    refBool = true;
}
  
}
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
  text("TIMER: "+timer, style.centerX, style.row7);
    
   if (team1or2 == false){
    textSize(style.h1);
    text(teamname1.saved, style.centerX, style.row1); 
    text("Obstacle # " + obstacle1, style.centerX, style.row2);
    team1Run();
   }
   
   if (team1or2 == true){
    textSize(style.h1); 
    text(teamname2.saved, style.centerX, style.row1);
    text("Obstacle # " + obstacle2, style.centerX, style.row2);
    team2Run();
   }
   
  
}

//---------------------------------- 

 public void team1Run(){
   
  hit1Button.display(style.centerX, style.row4, hit1Button.w3, hit1Button.ht3, "HIT", style.h3);
  hit1Button.update();
  
  miss1Button.display(style.centerX,style.row5, miss1Button.w3,miss1Button.ht3,"MISS", style.h3);
  miss1Button.update();

  cop1Button.display(style.centerX,style.row6, cop1Button.w3,cop1Button.ht3,"COPOUT", style.h3);
  cop1Button.update();
  
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
  
    
  if (obstacle1 == 5 && team1Done == false){
   // time1 = timer;
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
  
//  if(sw.running == false){
//  sw.start(); //start the timer
//  }
//  
//
//  String timer = nf(120 - sw.second(), 3);
//  text("TIMER: "+timer, style.centerX, style.row7);
  
 }
 

 
 //---------------------------------- 

 public void team2Run(){
   
  hit2Button.display(style.centerX, style.row4, hit2Button.w3, hit2Button.ht3, "HIT", style.h3);
  hit2Button.update();
  
  miss2Button.display(style.centerX,style.row5, miss2Button.w3,miss2Button.ht3,"MISS", style.h3);
  miss2Button.update();

  cop2Button.display(style.centerX,style.row6, cop2Button.w3,cop2Button.ht3,"COPOUT", style.h3);
  cop2Button.update();
  
    //TEAM 1 BUTTON LOGIC
   if (hit2Button.pressed && doItOnce2 == false) { 
      doItOnce2 = true;
      obstacle2+=1;
      hit2+=1;
//      println(obstacle1);
  }
  
   if (cop2Button.pressed && doItOnce2 == false) { 
      doItOnce2 = true;
      obstacle2+=1;
      cop2+=1;
//      println(obstacle1);
  }
  
  if (miss2Button.pressed && doItOnce2 == false) { 
      doItOnce2 = true;
      miss2+=1;
//      println("miss");
  }
  
  if (hit2Button.pressed == false && cop2Button.pressed == false && miss2Button.pressed == false){
      doItOnce2 = false;
  }
  
    
  if (obstacle2 == 5 && team2Done == false){
   // time1 = timer;
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
  
  
 

 

public void finishScreen(){
  
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
  text("Time " + time1, style.col2, style.row3);
  text("Hits " + hit1, style.col2, style.row4);
  text("Misses " + miss1, style.col2, style.row5);
  text("Cop Outs " + cop1, style.col2, style.row6);
  
  
  text(teamname2.saved, style.col6, style.row1);
  text("Time " + time2, style.col6, style.row3);
  text("Hits " + hit2, style.col6, style.row4);
  text("Misses " + miss2, style.col6, style.row5);
  text("Cop Outs " + cop2, style.col6, style.row6);
  
  
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

boolean gridOn = false;
  
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
  
  row1 = int(height/8);
  row2 = int(height/4);
  row3 = int(height/2.66);
  row4 = int(height/2);
  row5 = int(height/1.6);
  row6 = int(height/1.33);
  row7 = int(height/1.14);
  row8 = int(height);
  
}

//--------------------------------
public void scheme(int sch_) {
  
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

//--------------------------------
public void showGrid(){
  
  if (gridOn){
  //rows
  textSize(height/40);
  
  textAlign(LEFT, TOP);
  
  text("row 1", 0, row1);
  line(0, row1, col8, row1);
  text("row 2", 0, row2);
  line(0, row2, col8, row2);
  text("row 3", 0, row3);
  line(0, row3, col8, row3);
  text("row 4", 0, row4);
  line(0, row4, col8, row4);
  text("row 5", 0, row5);
  line(0, row5, col8, row5);
  text("row 6", 0, row6);
  line(0, row6, col8, row6);
  text("row 7", 0, row7);
  line(0, row7, col8, row7);
  text("row 8", 0, row8);
  line(0, row8, col8, row8);


  
  //cols 
  textAlign(LEFT, TOP);
  text("col 1", col1, 0);
  line(col1, 0, col1, row8);
  text("col 2", col2, 0);
  line(col2, 0, col2, row8);
  text("col 3", col3, 0);
  line(col3, 0, col3, row8);
  text("col 4", col4, 0);
  line(col4, 0, col4, row8);
  text("col 5", col5, 0);
  line(col5, 0, col5, row8);
  text("col 6", col6, 0);
  line(col6, 0, col6, row8);
  text("col 7", col7, 0);
  line(col7, 0, col7, row8);
  text("col 8", col8, 0);
  line(col8, 0, col8, row8); 
  
  }
}

public void toggleGrid(){
  
      if (keyPressed) {
        if (key == 'g' || key == 'G') {
          gridOn = true;
        }
    }
    else gridOn = false;
    
 
}

  
}
class StopWatchTimer {
  int startTime = millis(), stopTime = 0;
  boolean running = false; 
  
  //-----------------------
  
public void start() {
//    startTime = millis();
    startTime = millis();
    running = true;
  }
  
  //-----------------------
  
  
public void stop() {
    stopTime = millis();
    running = false;
  }
  
  int getElapsedTime() {
    int elapsed;
    if (running) {
      elapsed = (millis() - startTime);
    }
    else {
      elapsed = (stopTime - startTime);
    }
    return elapsed;
  }

 int hundrensec(){
  return (getElapsedTime() / 10) % 100; 
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
  
  //-----------------------
  
 public void time() {
//  background(#FFFFFF);
//  fill(#000000);
//  textAlign(CENTER);
//  text(nf(sw.second(), 3), 150, 175);
}

}

