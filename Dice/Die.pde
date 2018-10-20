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
    System.out.println(dieRoll);
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
