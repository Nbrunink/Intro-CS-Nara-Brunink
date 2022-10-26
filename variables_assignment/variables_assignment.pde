int x = 10;
int y = 1000;
int m = 1000;

void setup() {
  size(1000, 1000);
}

void draw() {
  background(200, 100, 100);
   square(x, height/2, 100); 
   circle(500, y, 100);
   
   if (x == width) {
   x = 0;
   } else {
     x = x + 1;
   }
     
    if (y == 0) {
      y = 1000;
    } else {
      y = y - 1;

    }
}
