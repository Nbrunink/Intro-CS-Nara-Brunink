void setup() {
  size(1000, 600);
  rectMode(CENTER);
  
  for(int b = 1; b <= 15; b = b + 1) {
   float w = (float)random(50,100);
    buildingg (b * 70, 600, 
  w, (int)random(200, 500),
   w/25);
   
}

  for(int b = 1; b <= 15; b = b + 1) {
  float w = (float)random(50,100);
    buildingg (b * 70, 300, 
   w, (int)random(200, 500),
   w/25);
   
}
}

void draw() {
 
}

void buildingg(float xCenter, float yBottom, float W, float buildingHeight,
float numWindows) {
 float dh = 60;
  float yCenter = yBottom - buildingHeight/2;
  fill(220, 180, 0);
 rect(xCenter, yCenter, W, buildingHeight); 
 fill(250, 250, 250);
 rect(xCenter, yBottom - dh/2, 45, dh);
 
 //windows
 float step = W/(numWindows + 1);
 float xLeft = xCenter - W/2;
 
 int n = 1;
 while (n <= numWindows) {
   rect(xLeft + n *step, yCenter - 20, 30, 40);
   n = n + 1;
 }
 
}



void building(float xCenter, float yBottom, float w, int numFloors) {
 float floorheight = 10;
  float buildingheight = numFloors * floorheight;
  rect(xCenter, yBottom - buildingheight/2, w, numFloors * floorheight);
  
}
