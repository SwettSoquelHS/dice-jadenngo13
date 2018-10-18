Die d1;
void setup() {
  size(1000, 800);
  //no loop means that draw is only called once
  //OR if you ever call redraw()
  d1 = new Die(width/2, height/2);
  noLoop();
}

void draw() {
  background(100);
  d1.roll();
  d1.show();
  //your code here
}

void mousePressed() {
  //No real work for you to do here
  //calling redraw will do the necessary work 
  //to redraw your processing script
  redraw();
}


//Dice: Models a single 6 sided dice cube
//Each instance should randomly assign itself a value from 1 to 6
class Die {
  //variable declarations for your Die instances here
  int x_pos;
  int y_pos;
  int dieRoll;
  int die_x;
  int die_y;
  //constructor
  Die(int x, int y) {
    x_pos = x;
    y_pos = y;
    die_x = 0;
    die_y = 100;
    //variable initializations here
  }

  //Simulate a roll of a die
  void roll() {
    dieRoll = 1;//(int)random(1, 6);
    System.out.println(dieRoll);
    //your code here, 
    //should randomly assign a value from 1 to 6
  }

  /*
	  Use the randomly assigned roll value to draw the face of a die
   	*/
  void show() {
    pushMatrix();
    translate(x_pos, y_pos);
    fill(255);
    rect(die_x, die_y, 150, 150);
    //your code here
    if (dieRoll == 1) {
      fill(50);
      ellipse(die_x+75, die_y, 25, 25);
    }
    popMatrix();
  }
}
