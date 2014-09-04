

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

public boolean total1Once = false; //so we only add our total up one time
public boolean total2Once = false;

public int totalScore1 = 0;
public int totalScore2 = 0;

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

