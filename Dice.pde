int dSum = 0;

void setup(){
  size(400, 400);
  textAlign(CENTER, CENTER);
  noLoop();
}

void draw(){
  background(0);
  for(int y = 15; y < 180; y = y + 60){ 
    for(int x = 15; x < 180; x = x + 60){
      Die bob = new Die(x, y);
      bob.display();
    }
  }
  textSize(35);
  text("Total: " + dSum, width / 2, 325);
}

void mousePressed(){
  dSum = 0;
  redraw();
}

class Die{
  int xPos, yPos, dSide;  

  Die(int x, int y){
    xPos = x;
    yPos = y;
    roll();
  }
  void roll(){
    dSide = (int)(Math.random()*6+1);
    stroke(100, 120, 150);
    strokeWeight(10);
  }

  void display(){
    noStroke();
    fill(100, 120, 75);
    rect(xPos, yPos, 50, 50);
    stroke(0);
    if (dSide == 1){
      point(xPos + 25, yPos + 25);
      dSum++;
    } 
    else if (dSide == 2){
      point(xPos + 15, yPos + 15);
      point(xPos + 35, yPos + 35);
      dSum = dSum + 2;
    }
    else if (dSide == 3){
      point(xPos + 10, yPos + 10);
      point(xPos + 25, yPos + 25);
      point(xPos + 40, yPos + 40);
      dSum = dSum + 3;
    }
    else if (dSide == 4){
      point(xPos + 10, yPos + 10);
      point(xPos + 40, yPos + 10);
      point(xPos + 10, yPos + 40);
      point(xPos + 40, yPos + 40);
      dSum = dSum + 4;
    }
    else if (dSide == 5){
      point(xPos + 10, yPos + 10);
      point(xPos + 40 , yPos + 10);
      point(xPos + 25, yPos + 25);
      point(xPos + 10, yPos + 40);
      point(xPos + 40, yPos + 40);
      dSum = dSum + 5;
    }
    else if (dSide == 6){
      point(xPos + 10, yPos + 10);
      point(xPos + 10 , yPos + 25);
      point(xPos + 10, yPos + 40);
      point(xPos + 40, yPos + 10);
      point(xPos + 40, yPos + 25);
      point(xPos + 40, yPos + 40);
      dSum = dSum + 6;
    }
  }
}