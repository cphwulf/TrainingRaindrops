class Catcher {

  //egenskaber
  float xPos;
  float yPos;
  float radius;
  int cCol;
  //konstruktør

  Catcher(float x, float y, float r) {
    xPos=x;
    yPos=y;
    radius=r;
    cCol=120;
  }
  //metoder 

  void display() {
    colorMode(HSB);
    fill(cCol, 100, 100);
    ellipse(xPos, yPos, radius*2, radius*2);
  }

  void setPosition(float x, float y) {
    xPos=x;
    yPos=y;
    float tmpx=abs(width/2-x); //<>//
    float tmpy=abs(y-height/2); //<>//
    //println(tmpx);
    int sum=int(tmpx+tmpy);
    float nCol=map(sum, 0, 1500, 0, 255);
    cCol=(int) nCol;
    //cCol=(int)((tmpx+tmpy));
  }

  boolean interSect(Drop drop) {
    boolean inRange=false;
    float distance = sqrt(pow(xPos-drop.xPos, 2)+pow(yPos-drop.yPos, 2));
    if (distance < (radius+drop.radius)) {
      inRange=true;
      return inRange;
    }  
    return inRange;
  }
}
