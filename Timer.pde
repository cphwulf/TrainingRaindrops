class Timer {
  // egenskaber
  int interval;
  int totalGameTime;
  int startTime;

  // konstruktør
  Timer(int dt, int tt) {
    interval=dt;
    totalGameTime=tt;
  }
  // metode

  void startTimer() {
    startTime=millis();
  }

  boolean gameDone() {
    boolean retVal=false;
    int nowTime = millis();
    if ((nowTime-startTime) > totalGameTime) {
      retVal=true;
      return retVal;
    } 
    return retVal;
  }
}

boolean intervalDone() {
  boolean retVal=false;
  int nowTime = millis();
  if ((nowTime-startTime) > interval) {
    retVal=true;
    return retVal;
  } 
  return retVal;
}

}
