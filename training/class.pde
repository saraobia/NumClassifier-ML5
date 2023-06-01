class One {
  //variables

  float x, y, z, q;
  int w;

  //Constructor
  One () {
    x = 50;
    y = 5;
    z = 90;
    q = 35;
    w = 5;

  }

  //Function
  void display(float s) {
    rectMode(CENTER);
  //  stroke(0);
    scale(s);
    strokeWeight(w);
    line(x, y, x, z);
    line(q, x, x, y);
    
  }
}

class Two {
  //variables

  float x, y, z, a, b, c, d, e;
  int w;

  //Constructor
  Two () {
    x = 40;
    y = 55;
    z = 50;
    a = 75;
    b = 50;
    c = 20;
    d = 80;
    e = 90;
    w = 5;
    
  }

  //Function
  void display(float s) {
    rectMode(CENTER);
  //  stroke(100);
    scale(s);
    strokeWeight(w);
    noFill();
    arc(z, x, y, y, PI, TWO_PI + QUARTER_PI/2);
    line(a, b, c, e);
    line(c, e, d, e);
  }
}

class Three {
  //variables

  float x, y, z, a, b, c, d, e;
  int w;

  //Constructor
  Three () {
    x = 50;
    y = 40;
    z = 70;
    a = 30;
    w = 5;
    
  }

  //Function
  void display(float s) {
    rectMode(CENTER);
   // stroke(220);
   scale(s);
   strokeWeight(w);
   noFill();
   arc(x, a, y, y, PI * 1.2, TWO_PI * 1.25);
   arc(x, z, y, y, PI * 1.5, TWO_PI * 1.4);
  }
}


class Four {
  
 float x, y, z, a, b, c ;
  int w;
  
  //Constructor
  Four () {
    x = 90;
    y = 60; 
    z = 10; 
    a = 20; 
    b = 80; 
    c = 70; 
    w = 5;
    
  }

  //Function
   void display(float s) {
    rectMode(CENTER);
    //stroke(100);
    scale(s);
    strokeWeight(w);
    noFill();
    //arc(z, x, y, y, PI, TWO_PI + QUARTER_PI/2);
    line(y, z, a, c);
    line(a, c, b, c);
    line(y, z, y, x);
  }
}

class Five {
 
 float x, y, z, a, b, c, e ;
  int w;
  //Constructor
  Five () {
    x = 50;
    y = 30; 
    z = 65; 
    a = 30; 
    b = 70; 
    c = 10; 
    e = 50;
    w = 5;
    
  }

  //Function
   void display(float s) {
    rectMode(CENTER);
    //stroke(100);
    scale(s);
    strokeWeight(w);
    noFill();
    arc(e, z, e, e, PI * 1.2, TWO_PI * 1.4);
    line(a, c, b, c);
    line(y, c, y, x);
  }
}

 class Six {
 
 float x, y, z, a, b, c ;
  int w;
  //Constructor
  Six () {
    x = 10;
    y = 35; 
    z = 70; 
    a = 55; 
    b = 45; 
    c = 55;
    w = 5;
    
  }

  //Function
   void display(float s) {
    rectMode(CENTER);
    //stroke(100);
    scale(s);
    strokeWeight(w);
    noFill();
    arc(c, z, b, b, PI * 1, TWO_PI * 1.5);
    line(z, x, y, a);  
 }
}

class Seven {
  
 float x, y, z, a, b ;
  int w;
  
  //Constructor
  Seven () {
    x = 45;
    y = 75; 
    z = 20; 
    a = 80; 
    b = 30; 
    w = 5;
    
  }

  //Function
   void display(float s) {
   rectMode(CENTER);
    //stroke(100);
    scale(s);
    strokeWeight(w);
    noFill();
    line(y, z, x, a);
    line(b, z, y, z );
  }
}

 class Eight {
 
 float x, y, z, a ;
  int w;
  //Constructor
  Eight () {
    x = 30;
    y = 40; 
    z = 70; 
    a = 50; 
    w = 5;
    
  }

  //Function
   void display(float s) {
    rectMode(CENTER);
    //stroke(100);
    scale(s);
    strokeWeight(w);
    noFill();
    arc(a, z, y, y, PI * 1, TWO_PI * 1.5);
    arc(a, x, y, y, PI * 1, TWO_PI * 1.5);  
  }
}

 class Nine {
 
 float x, y, z, a, b, c, d ;
  int w;
  //Constructor
  Nine () {
    x = 10;
    y = 40; 
    z = 30; 
    a = 55; 
    b = 45; 
    c = 90;
    d = 72;
    w = 5;
    
  }

  //Function
   void display(float s) {
    rectMode(CENTER);
    //stroke(100);
    scale(s);
    strokeWeight(w);
    noFill();
    arc(a, z, b, b, PI * 1, TWO_PI * 1.5);
    line(d, b, y, c);
   
 }
}
