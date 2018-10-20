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
  //No real work for you to do here
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
