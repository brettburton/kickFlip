

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


