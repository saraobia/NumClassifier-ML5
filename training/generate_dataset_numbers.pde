One one;
Two two;
Three three;
Four four;
Five five;
Six six;
Seven seven;
Eight eight;
Nine nine;

void setup() {
  size(100, 100);
  one = new One();
  two = new Two();
  three = new Three();
  four = new Four();
  five = new Five();
  six = new Six();
  seven = new Seven();
  eight = new Eight();
  nine = new Nine();
  
}

void draw() {
  
  for (int i = 0; i < 9; i++) {
    background(255); 
    pushMatrix();
    float r = random(0.2, 1); 
    float x = random(-5, 20); //position x
    float y = random(0, 10); //position y
    stroke(random(100), random(100), random(100));
    translate(x, y);
      if (i == 0) {
            rectMode(CENTER);
            rotate(random(-0.2, 0.2));
            one.display(r);
            saveFrame("data/one####.png");
        } else if (i == 1) {
            rectMode(CENTER);
            rotate(random(-0.2, 0.2));
            two.display(r);
            saveFrame("data/two####.png");
        } else if (i == 2) {
            rectMode(CENTER);
            rotate(random(-0.2, 0.2));
            three.display(r);
            saveFrame("data/three####.png");
        } else if (i == 3) {
            rectMode(CENTER);
            rotate(random(-0.2, 0.2));
            four.display(r);
            saveFrame("data/four####.png");
        } else if (i == 4) {
            rectMode(CENTER);
            rotate(random(-0.2, 0.2));
            five.display(r);
            saveFrame("data/five####.png");
        }  else if (i == 5) {
            rectMode(CENTER);
            rotate(random(-0.2, 0.2));
            six.display(r);
            saveFrame("data/six####.png");
        }  else if (i == 6) {
            rectMode(CENTER);
            rotate(random(-0.2, 0.2));
            seven.display(r);
            saveFrame("data/seven####.png");
        }  else if (i == 7) {
            rectMode(CENTER);
            rotate(random(-0.2, 0.2));
            eight.display(r);
            saveFrame("data/eight####.png");
        }  else if (i == 8) {
            rectMode(CENTER);
            rotate(random(-0.2, 0.2));
            nine.display(r);
            saveFrame("data/nine####.png");
        }
    
    popMatrix();
  }   
       if (frameCount == 90) {
    exit();
  } 
}
