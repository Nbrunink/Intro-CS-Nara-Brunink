float x = 20;
float y = 20; 

void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  fill(250);
  circle(x, y, 20);

  
  //go down
  if (x == 20 && y < 480) {
   y = y + 5;
  }
   
   //go right
   if (y == 480 && x < 480) {
    x = x + 5;
   }
    
    //go up
    if (x == 480 && y <= 480) {
      y = y - 5;
    }
    
    //go left
    if (y == 20 && x <= 480) {
      x = x - 5;
    }
  
}
