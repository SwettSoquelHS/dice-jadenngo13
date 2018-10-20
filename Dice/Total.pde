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
