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
