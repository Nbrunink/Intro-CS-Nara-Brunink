int x = 1000;
int y = 1000;
int m = 0;
float z = 250.0;
int f = 0;

void setup() {
  size(1000, 1000);
}

void draw() {
  background(0, 0, 0);
  fill(255, 0, 0, z);
  circle(500, 500, 300);
  z = z - 0.4;
  
  fill(250, 250, 250);
  square(550, x, 50);
  
  triangle(0, 0, 0, 100, y, 50);
  y = y - 1;
  
   fill(250, 250, 250);
  square(0, 0, m);
  m = m + f;
  
  if (x == 0) {
    x = 1000;
  } else {
    x = x - 2;
  }
  
  if (y == 900) {
    
     f = 1;
     print(f);
  } else {
    println(y);
   
  }
  
}
