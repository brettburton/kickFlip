

//DECLARE VARIABLES HERE


 int[] flipPoints = {125,70,75,50,65,200,150,165,215,215,180,195,195,225,220,145,140,40};  // Points for flip tricks
 int[] grindPoints = {75,75,85,85,125,125,100,100,150,150,165,165,175,175,110,110,70,70,185,185,195,195}; //Points for grinds
 int[] stancePoints = {5,9,10,7};//points for stance
 String[] flipNames = {"heelflip","pop-shuv it","fs pop shuv","ollie","nollie","360 flip","360 shuv","360 fs shuv","inwardflip","hardflip","bigspin","fs bigspin","bs bigspin","bigheelflip","bigflip","varial heel","varial kick","cop-out"};
 String[] grindNames = {"frontside 50-50","backside 50-50","frontside five-0","backside five-0","backside crooked","frontside crooked","frontside salad","backside salad","frontside smith","backside smith","frontside overcrook","backside overcrook","frontside nosegrind","backside nosegrind","frontside noselide","frontside boardslide","backside boardslide","frontside bluntslide","backside boardslide","frontside noseblunt","backside noseblunt"};
 String[] stanceNames = {"regular","nollie","switch","fakie"};
 
  
 Input teamname1;
 Input teamname2;

 StopWatchTimer sw;
 Style style;

 boolean mainBool = true;
 boolean secondBool = false;
 boolean skateBool = false; //not in demo mode
 boolean mapBool = false; 
 boolean localBool = false;
 boolean readyBool = false; 
 boolean readyBool2 = false; 

 PImage bigmap;
 PImage smallmap;
 PImage leslayout;
 PImage logo;

 button mainButton;
 button readyButton1;
 button readyButton2;
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
 boolean refBool = false; //start the race!



 button lesDButton; //to get to the direction page
 button checkButton;
 button loginButton;
 button team1Button;
 button team2Button;
 button enterButton; //enter the tricks

//the stuff for the REF screen
 button hit1Button;
 button hit2Button;
 button miss1Button;
 button miss2Button;
 button cop1Button;
 button cop2Button;
 int obstacle1 = 1;
 int obstacle2 = 1;
 int hit1 = 0; //for keeping track of totals for hits, misses and cop outs
 int hit2 = 0;
 int miss1 = 0;
 int miss2 = 0;
 int cop1 = 0;
 int cop2 = 0;
 String time1; //finish time for team1
 String time2; //finish time for team2
 int timeFinal1; //finish time int for team1
 int timeFinal2; //finish time int for team2
 boolean doItOnce = false;
 boolean doItOnce1 = false; //these are so our buttons on the ref page don't turbo fire
 boolean doItOnce2 = false;
 boolean finishBool = false;
 boolean team1Done = false;//we use this to keep track of when team 1 is done;
 boolean team2Done = false;//we use this to keep track of when team 2 is done;
 boolean team1or2 = false; //if false team 1 if true team 2 

//obstacle button stuff
button flipINextButton;
button flipIPrevButton;
button grindNextButton;
button grindPrevButton;
button flipONextButton;
button flipOPrevButton;
button stanceNextButton;
button stancePrevButton;

String flipIStr;  //strings for displaying names of tricks
String grindStr;
String flipOStr;
String stanceStr;

int whichFlipIn = 0;
int whichFlipOut = 0;
int whichGrind = 0;
int whichStance = 0;


//holds the potential points for each trick
 int[] team1tempPoints = {0,0,0,0};// 16?
 int[] team2tempPoints = {0,0,0,0};

//holds the final points for each trick
 int[] team1trickPoints = {0,0,0,0}; //16?
 int[] team2trickPoints = {0,0,0,0};
 int[] componentPoints = {0,0,0,0}; //this is for each part of each trick In, grind, out and stance

 boolean total1Once = false; //so we only add our total up one time
 boolean total2Once = false;

 int totalScore1 = 0;
 int totalScore2 = 0;

 int trickNum = 1;//which trick are we entering
//-------------------------------------

//SETUP RUNS ONCE

 void setup(){

//1136×640 iphone screen
//size(640,1136);
size(400,710); //iPhone aspect ratio but not full screen size
smooth();


teamname1 = new Input();
teamname2 = new Input();

style = new Style();
style.scheme(2);

//dropDownSetup();

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

//Obstacle stuff
flipINextButton = new button();
flipIPrevButton = new button();
grindNextButton = new button();
grindPrevButton = new button();
flipONextButton = new button();
flipOPrevButton = new button();
stanceNextButton = new button();
stancePrevButton = new button();

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

 void keyPressed() {
  
   if(checkBool){
   teamname1.input(13);
   }
   
   if(loginBool){
   teamname2.input(13);
   }
   
}

