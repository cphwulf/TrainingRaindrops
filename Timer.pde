class Timer {
  // egenskaber
  int startTime;
  int interval;
  // konstruktør
  
  Timer(int t){
    interval=t;
    startTime=0;  
  }


  // metoder
  void startTimer() {
    startTime=millis();
  }
  
  boolean intervalDone() {
    boolean retVal = false;
    println("in .." + startTime);
    if ((millis() - startTime) > interval) {
      retVal=true;
      return retVal;
    }  
    return retVal;
  }
}
