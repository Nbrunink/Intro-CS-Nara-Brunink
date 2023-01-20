//Hi!!! My view was to show a pond in the rain, surrounded by trees with fish jumping.
//I wanted to create a button that would change the time of day
//My inspo for this was my first fishing trip with my dad
//where it was raining the entire time and we got soaked :))
//The video where I took some code from (it is labeled throughout my code wherever I used it):
//Daniel Shiffman video: https://www.youtube.com/watch?v=KkyIDI6rQJI
//As you can see, I have put // in front of some lines of code because I wanted to make the fish jump in an arc, but I unfortunately did not get to that yet
//I will consult my math teacher and work with him in order to finish it!!

float[] rainx = new float[200]; //the array of the x coordinates of raindrops
float[] rainy = new float[200];//the array of the y cooridnates of raindrops
float[] rainyspeed = new float[200]; //the array of the speeds at which the raindrops fall
float[] ripple = new float[200]; //the array of the arc of the ripple 
float fishx; //the x of the fish
float fishy; //the y of the fish
float font; //the font of the lettering
boolean rain = true; //the boolean used to stop the rain and fish once the button is pressed
int[] rippletimer = new int[200]; //the timer for the ripple effect
boolean[] rippletimer2 = new boolean[200]; //the array of booleans used to time the ripple
//int[] fishtimer = new int[100]; //the timer for the fish -> I encountered a few problems with the fish timer and am working on improving it!
//boolean[] fishtimer2 = new boolean[100]; //the array of booleans used to time the fish
//float a = 100; //the width of the jump of the fish
//int h = 50; //the height of the jump of the fish
//int k = 50; //what point slope form of a parabola is


void setup () {
  size(800, 800);
  textSize(30);
  //rain
  for (int i = 0; i < 200; i++) {
    rainx[i] = random(25, 800); //the x and y coordinates of the rain are random
    rainy[i] = random(1, 800);
    rainyspeed[i] = random(5, 11); //this idea was taken from Daniel Shiffman
    rain = true;
  }
}
void draw () {
  background(255);

  //lake
  fill (#86B0F4);
  ellipse (400, 500, 655, 423);

  //trees
  push();
  trees();
  translate(0, 500);
  trees();
  pop();
  
  //rain
  Rain();
  

  //ripple effect
  if (rain == true) {
  for (int i = 0; i < 200; i ++) {
    if (rippletimer2[i] == false && rainx[i] > 140 && rainx[i] < 660 && rainy[i] > 270 && rainy[i] < 560) {
      ripple[i] = rainy[i];
      rippletimer2[i] = true;
      rippletimer[i] = millis();
    }
    if (ripple[i] != 0) {
      arc(rainx[i], (ripple[i] + 100), 10, 10, THIRD_PI, THIRD_PI+THIRD_PI);
    }
    if (rippletimer[i] < millis() - 1000) { // this allows the ripple to dissapear after about a second
      rippletimer2[i] = false;
    }
  }
  } 
  //fish
  // translate(x, y);
  fishx = random(160, 640); //the x and y coordinates of the fish are random
    fishy = random(300, 560);
   ellipse(fishx, fishy, 50, 16);
  triangle(fishx + 25, fishy, fishx + 50, fishy + 20, fishx + 50, fishy - 20);
 
  
  //parabola for jumping fish -> will be completed in future
 // fishy = a(fishx-h)*(fishx-h)+k;
// k = a(fishx-h)*(fishx-h)-fishy;
  
  


  //button
 textSize(20);
  stroke(0);
  fill(255);
  rect(650, 725, 125, 75);
  fill(0);
  text("Press Me!", 675, 775);
  
  //sun
  if(rain == false) {
    fill(#FFCD03);
    circle(750, 45, 75);
  }
  
  //text
  textSize(30);
  if(rain == true) {
   text("It's Raining!", 50, 50); 
  } else if (rain == false) {
    text("It's Sunny!", 50, 50);
  }
 }
 
 void Rain() {
   if (rain == true) {
    for (int i = 0; i < 200; i ++) {
      stroke(10, 56, 200); //the stroke and line ideas were also taken from Daniel Shiffman
      line(rainx[i], rainy[i], rainx[i], rainy[i]+15);
      rainy[i] = rainy[i] + rainyspeed[i];
      if (rainy[i] > height) { //this if statement was taken from Daniel Shiffman
        rainy[i] = random(1, 800);
   }
   }
   }
 }
void mousePressed() {
  if (mouseX > 650 && mouseX < 775 && mouseY > 725 && mouseY < 800) {
    rain = false;
}
}

void trees() {
   //trees
  push ();
  noStroke ();
  fill (#075422);
  triangle(80, 80, 120, 200, 40, 200); //tree 1
  triangle(80, 170, 130, 290, 30, 290);
  triangle(250, 50, 290, 180, 210, 180); //tree 2
  triangle(250, 140, 300, 270, 200, 270);
  triangle(395, 30, 435, 160, 355, 160); //tree 3
  triangle(395, 120, 445, 250, 345, 250);
  triangle(550, 50, 590, 180, 510, 180); // tree 4
  triangle(550, 140, 600, 270, 500, 270);
  triangle(720, 80, 760, 200, 680, 200); //tree 5
  triangle(720, 170, 770, 290, 670, 290);
  fill (#4B2810);
  rect(60, 290, 40, 60); //tree 1
  rect(230, 270, 40, 30); //tree 2
  rect(375, 250, 40, 30); //tree 3
  rect(530, 270, 40, 30); //tree 4
  rect(700, 290, 40, 60); //tree 5
  pop ();
}
