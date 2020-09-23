// The catcher (begreber)
// The timer
// The collision (aktivitet)
// The drop
// The game - TrainingRaindrops

Catcher catcher;
Drop d1;
Drop d2;
Drop[] drops;

void setup() {
  size(800, 600);
  drops = new Drop[100];
  catcher = new Catcher(width/2, height/2, width/20);
  d1 = new Drop(300, 200, width/20);
  d2 = new Drop(300, 400, width/20);
  drops[0]=d1;
  drops[1]=d2;
}

void draw() {
  background(255);
  catcher.setPosition(mouseX, mouseY);
  catcher.display();
  for (int i=0; i<drops.length; i++) {
    if (drops[i] != null) {
      drops[i].move(1);
      drops[i].display();
    }
  }
  
  for (int i=0; i<drops.length; i++) {
    if (drops[i] != null) {
      if (catcher.interSect(drops[i])) {
        // hvis de er indenfor 2*radius så ændre retningen på begge
        drops[i].move(340);
        //d2.changeDirection();
      }
    }
    
    /*
     d1.move(2);
     d2.move(1);
     d1.display();
     d2.display();
     */

    /*
  if(d1.interSect(d2)) {
     // hvis de er indenfor 2*radius så ændre retningen på begge
     d1.move(500);
     //d2.changeDirection();
     }
     */
  }
}
