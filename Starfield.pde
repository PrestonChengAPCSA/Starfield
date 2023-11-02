particles[] dots;
bigBoy bubble;
void setup() {
  size(500, 500);
  background(0);
  dots = new particles[100];
  for (int i = 0; i < dots.length; i ++) {
    dots[i] = new particles();
  }
  bubble = new bigBoy();
}

void draw() {
  background(0);
  fill(152, 80, 60);
  noStroke();
  rect(150, 300, 200, 50);
  fill(255);
  rect(225, 350, 50, 150);
  ellipse(370, 125, 100, 100);
  fill(0);
  ellipse(350, 100, 100, 100);
  for (int i = 0; i < dots.length; i ++) {
    dots[i].show();
    dots[i].explode();
  }
  bubble.show();
  bubble.explode();
}


class particles {
  double myX, myY, myWidth, myHeight, myColor, myOpacity, mySpeed;
  double myAngle;

  particles() {
    myX = 250;
    myY = 300;
    myWidth = (Math.random()*20) + 20;
    myHeight = myWidth;
    myColor = (Math.random()*200) + 50;
    myOpacity = (Math.random()*60) + 60;
    myAngle = (Math.random()*Math.PI*2);
    mySpeed = (Math.random()*6+1);
  }

  void show() {
    fill((int)myColor, (int)myOpacity);
    ellipse((float)myX, (float)myY, (float)myWidth, (float)myHeight);
  }

  void explode() {
    myX = myX  + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)* mySpeed;
    if (myX > 500 || myX < 0 || myY > 500 || myY < 0) {
      myX = 250;
      myY = 300;
      myX = myX  + Math.cos(myAngle)*mySpeed;
      myY = myY + Math.sin(myAngle)* mySpeed;
    }
  }
}

class bigBoy extends particles {
  bigBoy() {
    myX = 250;
    myY = 300;
    myWidth = (int)(Math.random()*100) + 20;
    myHeight = myWidth;
    myOpacity = 100;
    myAngle = (Math.random()*Math.PI*2);
    mySpeed = (Math.random()*2+1);
    myColor = (Math.random()*200) + 50;
  }

  void show() {
    fill((int)myColor, (int)myOpacity);
    ellipse((float)myX, (float)myY, (float)myWidth, (float)myHeight);
  }

  void explode() {
    myX = myX  + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)* mySpeed;
    if (myX > 500 || myX < 0 || myY > 500 || myY < 0) {

      myX = 250;
      myY = 300;
      myX = myX  + Math.cos(myAngle)*mySpeed;
      myY = myY + Math.sin(myAngle)* mySpeed;
    }
  }
}
