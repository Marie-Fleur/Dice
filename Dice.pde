Die[][] dice;

void setup()
{
  size(800, 800);
  noLoop();
  textSize(20);

  dice = new Die[height/55][];
  for (int i = 0; i < (height/55); i++) {
    dice[i] = new Die[width/55];
  }

  for (int i = 0; i < (height/55); i++) {
    for (int j = 0; j < (width/55); j++) {
      dice[i][j] = new Die(i * 55, j * 55);
    }
  }
}
void draw()
{
  int sum = 0;
  background(152, 190, 100);
  for (int i = 0; i < (height/55); i++) {
    for (int j = 0; j < ((width/55)-1); j++) {
      dice[i][j].show();
      sum = sum + dice[i][j].myValue;
    }
  }
  text("Sum: " + sum, 10, 750, 400);
}

void mousePressed()
{
  for (int i = 0; i < (height/55); i++) {
    for (int j = 0; j < (width/55); j++) {
      dice[i][j].roll();
    }
  }
  redraw();
}
class Die
{
  int myX, myY, myValue;

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    myValue = (int)((Math.random()*6)+1);
  }
  void roll()
  {
    myValue = (int)((Math.random()*6)+1);
  }
  void show()
  {
    noFill();
    rect(myX, myY, 50, 50);
    fill(0);
    if (myValue == 1) {
      ellipse(myX + 25, myY + 25, 10, 10);
    } else if (myValue == 2) {
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
    } else if (myValue == 3) {
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
    } else if (myValue == 4) {
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
    } else if (myValue == 5) {
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
    } else {
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 25, 10, 10);
      ellipse(myX + 40, myY + 25, 10, 10);
    }
    noFill();
  }
}
