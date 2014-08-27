

void customize(DropdownList ddl) {
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

void controlEvent(ControlEvent theEvent) {

  if (theEvent.isGroup()) {

    dropName = theEvent.getGroup().getName();
    dropVal = int(theEvent.getGroup().getValue());
    
 } 
  
  if(dropName == "trickIn-d1"){
    JSONObject flipIn = flipIns.getJSONObject(dropVal);
    team1tempPoints[0] += int(flipIn.getInt("points"));
    println("flip in");
    println(team1tempPoints[0]);
  }
  if(dropName == "trick-d2"){
    JSONObject grind = grinds.getJSONObject(dropVal);
    team1tempPoints[0] += int(grind.getInt("points"));
    println("grind");
    println(team1tempPoints[0]);
  }
  if(dropName == "trickOut-d3"){
    JSONObject flipOut = flipOuts.getJSONObject(dropVal);
    team1tempPoints[0] += int(flipOut.getInt("points"));
    println("flip out");
  }
  if(dropName == "stance-d4"){
    JSONObject stance = stances.getJSONObject(dropVal);
    team1tempPoints[0] += int(stance.getInt("points"));
    println("stance");
  }
  
  else if (theEvent.isController()) {
    println("event from controller : "+theEvent.getController().getValue()+" from "+theEvent.getController());
  }
  
  println(dropVal);
  
  
  
}


//-----------------------------------------------

void dropDownSetup(){
 d1.setPosition(style.col2, style.row2);
 d1.captionLabel().set("Flip In");
 customize(d1);
  for (int i = 0; i < flipIns.size(); i++) {
    
     JSONObject flipIn = flipIns.getJSONObject(i);
     
     int id = flipIn.getInt("id");
     String name = flipIn.getString("name");
     int points = flipIn.getInt("points");
     d1.addItem(name, i);
     
   //  println(id + ", " + name + ", " + points);
     
  }
 
 d2.setPosition(style.col2, style.row3);
 d2.captionLabel().set("Grind");
 customize(d2);
     for (int i = 0; i < grinds.size(); i++) {
    
     JSONObject grind = grinds.getJSONObject(i);
     
     int id = grind.getInt("id");
     String name = grind.getString("name");
     int points = grind.getInt("points");
     d2.addItem(name, i);
  }
  
 
 d3.setPosition(style.col2, style.row4);
 d3.captionLabel().set("Flip Out");
 customize(d3);
 for (int i = 0; i < flipOuts.size(); i++) {
    
     JSONObject flipOut = flipOuts.getJSONObject(i);
     
     int id = flipOut.getInt("id");
     String name = flipOut.getString("name");
     int points = flipOut.getInt("points");
     d3.addItem(name, i);
 }
 
 d4.setPosition(style.col2, style.row5);
 d4.captionLabel().set("Stance");
 customize(d4);
     for (int i = 0; i < stances.size(); i++) {
    
     JSONObject stance = stances.getJSONObject(i);
     
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
