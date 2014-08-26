

//DECLARE VARIABLES HERE

//Dropdown Stuff
import controlP5.*;
ControlP5 cp5;
DropdownList d1, d2, d3, d4;
//
  
Input teamname1;
Input teamname2;

StopWatchTimer sw;
Style style;

JSONObject teamNames;

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
boolean loginBool = false; //login team 1's name
boolean loginBool2 = false;//login team 2's name
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
String time1; //finish time for team1
String time2; //finish time for team2
boolean doItOnce1 = false; //these are so our buttons on the ref page don't turbo fire
boolean doItOnce2 = false;
boolean finishBool = false;
boolean team1Done = false;//we use this to keep track of when team 1 is done;
boolean team2Done = false;//we use this to keep track of when team 2 is done;



//-------------------------------------

//SETUP RUNS ONCE

void setup(){

//1136×640 iphone screen
//size(640,1136);
size(400,710); //iPhone aspect ratio but not full screen size
smooth();

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
 
  if(startBool){
  refScreen();
 }
 
 if(finishBool){
   finishScreen();
 }
 
//uncomment these to show and toggle the style grid
// style.showGrid();
// style.toggleGrid();
 
}

 //-------------------------------------

void keyPressed() {
  
   if(checkBool){
   teamname1.input(13);
   }
   
   if(loginBool){
   teamname2.input(13);
   }
   
}

