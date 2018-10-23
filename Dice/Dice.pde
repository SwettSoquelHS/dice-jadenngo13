String totalRolls = "Totals:"; //header for total sided-roll counter
String graphNameT = "Totals"; //header for total roll graph
String graphNameC = "Current"; //header for current roll graph
String t = "Total Rolls: "; //header for total roll
String currRolls = "Current Totals:"; //header for current sided-roll counter
int sum; //sum for all rolls
int c = 0;
int[] counter = new int[6];
int[] currCounter = new int[6];
Total[] totals = new Total[6];
Die[] dice = new Die[9];
int darkBlue = #2D45D6; //colors
int blue = #1793E3;
int green = #23E317;
int yellow = #F9FA05;
int purple = #E329B8;
int red = #E31717; //end of colors


void setup() {
  size(1000, 800);
  //no loop means that draw is only called once
  //OR if you ever call redraw()
  for (int j = 0; j<3; j++) { //sets up dice on the board
    int y = 250 * j - 50;
    for (int i = 0; i<3; i++) {
      int x = 200 * i + 200;
      dice[c] = new Die(x, y);
      c++;
    }
  } //end of dice setup
  for (int k = 0; k<totals.length; k++) { //setup totals graph
    int y_val = 50 * k + 50;
    int graph_x = 40 * k + 50;
    totals[k] = new Total(10, y_val, graph_x);
  } //end of totals graph setup
  for (int i = 0; i<counter.length; i++) { //sets each counter value to 0
    counter[i] = 0;
    currCounter[i] = 0;
  } //end of counter setup
  noLoop();
}


void draw() {
  background(100);
  fill(0);
  textSize(20);
  text(totalRolls, 10, 20); //All text on grid
  text(currRolls, 10, 380);
  text(graphNameT, 850, 340);
  text(graphNameC, 850, 600);
  text(t, 150, 20);
  text(sum, 265, 20);
  for (int i = 0; i<dice.length; i++) { //creates new dice
    dice[i].roll();
    dice[i].show();
  }
  for (int i = 0; i<totals.length; i++) { //creates new graphs
    totals[i].show(i);
    totals[i].graph(i);
  }
}

void mousePressed() {
  //calling redraw will do the necessary work 
  //to redraw your processing script
  sum+=9; //everytime the mouse is clicked, the total roll counter goes up 6
  redraw();
}

void keyPressed() { //when a key is pressed, the total count of the die rolls are reset
  for (int i = 0; i<counter.length; i++) {
    counter[i] = 0;
  }
  sum = 0;
}



class Die { //beginning of class Die
  int x_pos; 
  int y_pos; 
  int dieRoll; 
  int die_x; 
  int die_y; 
  Die(int x, int y) {
    x_pos = x; 
    y_pos = y; 
    die_x = 0; 
    die_y = 100;
  }

  void roll() { //selects a random number between 0-6
    dieRoll = (int)random(1, 7); 
  }


  void show() {
    pushMatrix(); 
    translate(x_pos, y_pos); 
    fill(255); 
    rect(die_x, die_y, 150, 150); 
    if (dieRoll == 1) {
      counter[0]++;
      currCounter[0]++;
      fill(green); //green
      ellipse(die_x+75, die_y+75, 25, 25); //center dot
    } else if (dieRoll == 2) {
      counter[1]++;
      currCounter[1]++;
      fill(yellow); //yellow
      ellipse(die_x+110, die_y+110, 25, 25); //corner dots
      ellipse(die_x+40, die_y+40, 25, 25); //corner dots
    } else if (dieRoll == 3) {
      counter[2]++;
      currCounter[2]++;
      fill(purple); //purple
      ellipse(die_x+75, die_y+75, 25, 25); //center dot
      ellipse(die_x+110, die_y+110, 25, 25); //corner dots
      ellipse(die_x+40, die_y+40, 25, 25); //corner dots
    } else if (dieRoll == 4) {
      counter[3]++;
      currCounter[3]++;
      fill(blue); //blue
      ellipse(die_x+110, die_y+110, 25, 25); //right side dots
      ellipse(die_x+110, die_y+40, 25, 25); //right side dots
      ellipse(die_x+40, die_y+40, 25, 25); //left side dots
      ellipse(die_x+40, die_y+110, 25, 25); //left side dots
    } else if (dieRoll == 5) {
      counter[4]++;
      currCounter[4]++;
      fill(red); //red
      ellipse(die_x+75, die_y+75, 25, 25); //center dot
      ellipse(die_x+110, die_y+110, 25, 25); //right side dots
      ellipse(die_x+110, die_y+40, 25, 25); //right side dots
      ellipse(die_x+40, die_y+40, 25, 25); //left side dots
      ellipse(die_x+40, die_y+110, 25, 25); //left side dots
    } else if (dieRoll == 6) {
      counter[5]++;
      currCounter[5]++;
      fill(darkBlue); //dark blue
      ellipse(die_x+110, die_y+115, 25, 25); //right side dots
      ellipse(die_x+110, die_y+75, 25, 25); //right side dots
      ellipse(die_x+110, die_y+35, 25, 25); //right side dots
      ellipse(die_x+40, die_y+115, 25, 25); //left side dots
      ellipse(die_x+40, die_y+75, 25, 25); //left side dots
      ellipse(die_x+40, die_y+35, 25, 25); //left side dots
    }
    popMatrix();
  }
} //end of class Die



class Total { //beginning of class Total
  int x_pos;
  int y_pos;
  int graph_x;
  Total(int x, int y, int gx) {
    x_pos = x;
    y_pos = y;
    graph_x = gx;
  }

  void show(int i) { //begin of show function
    String s = i+1 + ": ";
    if (i==0) { //depending on the die roll, there is a coordinated color
      fill(green); //green
    } else if (i==1) {
      fill(yellow); //yellow
    } else if (i==2) {
      fill(purple); //purple
    } else if (i==3) {
      fill(blue); //blue
    } else if (i==4) {
      fill(red); //red
    } else if (i==5) {
      fill(darkBlue);
    }
    textSize(20);
    text(s, x_pos, y_pos); //for total counter
    text(counter[i], x_pos+50, y_pos);
    text(s, x_pos, y_pos+360); //for current counter
    text(currCounter[i], x_pos+50, y_pos+360);
  } //end of show function

  void graph(int i) {
    if (i==0) {
      fill(green); //green
    } else if (i==1) {
      fill(yellow); //yellow
    } else if (i==2) {
      fill(purple); //purple
    } else if (i==3) {
      fill(blue); //blue
    } else if (i==4) {
      fill(red); //red
    } else if (i==5) {
      fill(darkBlue);
    }
    rect(710+graph_x, 300, 40, 0-(counter[i])*.5);
    rect(710+graph_x, 550, 40, 0-(currCounter[i]*30));
    currCounter[i] = 0;
  }
} //end of class Total
