// The catcher (begreber) //<>//
// The timer
// The collision (aktivitet)
// The drop
// The game - TrainingRaindrops
// The Counter
// The Bucket

Catcher catcher;
Drop[] drops;
Timer timer;
Counter counter;
int j;
int max;

void setup() {
  counter = new Counter();
  colorMode(HSB);
  size(800, 600);
  int interval = 1000;
  j=0;
  max=100;
  timer = new Timer(interval);
  drops = new Drop[max];
  initArray(drops);
  catcher = new Catcher(width/2, height/2, width/20);
  timer.startTimer();
}

void initArray(Drop[] myArray) {
  Drop tmpDrop = null;
  for (int i=0; i<myArray.length; i++) {
    tmpDrop = new Drop();
    myArray[i]= tmpDrop;
  }
}
void draw() {
  background(255);
  catcher.setPosition(mouseX, mouseY);
  catcher.display();
  // send et signal når der er gået interval sekunder
  // gør noget "nyt" - send en dråbe
  
  // spørg om spillet har kørt mere end total-time
  // hvis ja - udskriv hits
  
  if(timer.intervalDone()) {

    // giv mig en ny dråbe
    j++;
    if (j>max) {
      j=0;
    }
    timer.startTimer();
  }
  
  for (int i=0; i<=j; i++) {
    if (catcher.interSect(drops[i])) {
      // hvis de er indenfor 2*radius så ændre retningen på begge
      drops[i].move(340);
      counter.addHit();
      //d2.changeDirection();
    } else {
      drops[i].move();
      drops[i].display();
    }
  }
}
