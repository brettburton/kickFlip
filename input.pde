
class Input{
  
String typing = "";    // Variable to store text currently being typed
String saved = "";    // Variable to store saved text when return is hit
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

  
//  println(saved);
//  
}


void input() {
  
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
  if (keyCode == BACKSPACE) {
    typing = typing.substring(0, typing.length() - 1);
    } 
  else
      if (key != CODED) typing += key; 
  }
  
  
  
  
  
  }

}