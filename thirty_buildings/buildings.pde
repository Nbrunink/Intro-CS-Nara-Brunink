void setup() {
  size(1000, 600);
  rectMode(CENTER);
   buildingg (700);
   buildingg (300);
}

void draw() {
 
}

void buildingg(float xCenter) {
  fill(220, 180, 0);
 rect(xCenter, 500, 300, 300); 
 fill(250, 250, 250);
 rect(xCenter, 600, 75, 175);
}

void building(float xCenter, float yBottom, float w, int numFloors) {
 float floorheight = 10;
  float buildingheight = numFloors * floorheight;
  rect(xCenter, yBottom - buildingheight/2, w, numFloors * floorheight);
  
}
