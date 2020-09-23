class Drop {
  //egenskaber
  //Drop(300,200,width/20)
  float xPos;
  float yPos;
  float radius;
  float speed;
  int dCol;
  int direction=1;
  float speedFactor;
  //konstruktør
  
  Drop(float x, float y, float r) {
    xPos=x;
    yPos=y;
    radius=r;
    dCol=120; 
    speed=1;
  }
  
  Drop() {
    //random(width), height/20, height/20
    xPos=random(width);
    yPos=height/20;
    radius=random(1,8);
    dCol=120; 
    speed=random(1,5);
    speedFactor=random(1,10);
  }
  //metoder

  void display() {
    fill(dCol);
    ellipse(xPos, yPos, radius*2, radius*2);
  }
  
  void move() {
    yPos=yPos+speed*speedFactor*direction*0.1;
  }

  void move(int speedFactor) {
    // change y-pos with factor*speed
    if (yPos-radius<0 || yPos+radius>height) {
      direction=direction*-1;
    }
    yPos=yPos+speed*speedFactor*direction;
  }
  
  void changeDirection() {
    direction=direction*-1;
  }
  
  
  boolean interSect(Drop drop) {
    boolean inRange=false;
    float distance = sqrt(pow(xPos-drop.xPos,2)+pow(yPos-drop.yPos,2));
    if(distance < (radius+drop.radius)) {
      inRange=true;
      return inRange;
    }  
  return inRange;
  }
}
