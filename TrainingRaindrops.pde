// The catcher (begreber) //<>//
// The timer
// The collision (aktivitet)
// The drop
// The game - TrainingRaindrops

Catcher catcher;
Drop d1;
Drop d2;
Drop[] drops;
Timer timer;
int i,j,max,interval;
int limit;

void setup() {
  size(800, 600);
  max=200;
  interval=500;
  drops = new Drop[max];
  initDrops(drops);
  catcher = new Catcher(width/2, height/2, width/20);
  timer = new Timer(interval);
  timer.startTimer();
  i=0;
  j=0;
  limit=20;

  //d1 = new Drop(300, 200, width/20);
  //d2 = new Drop(300, 400, width/20);
  //drops[0]=d1;
  //drops[1]=d2;
}

void initDrops(Drop[] drops) {
  Drop tmpDrop = null;
  for (int i=0; i<drops.length; i++) {
    //tmpDrop = new Drop(random(width), height/20, height/20);
    tmpDrop = new Drop();
    drops[i] = tmpDrop;
  }
}

void draw() {
  background(255);
  catcher.setPosition(mouseX, mouseY);
  catcher.display();
  for (int i=0; i<=j; i++) {
    if (timer.intervalDone()) {
      j++;
      if (j>max) {
        j=0;
      }
      timer.startTimer();  
    }
    if (drops[i] != null) {
      if (catcher.interSect(drops[i])) {
        // hvis de er indenfor 2*radius så ændre retningen på begge
        drops[i].move(940);
        //d2.changeDirection();
      }
    }
    drops[i].move();
    drops[i].display();
  }
}
