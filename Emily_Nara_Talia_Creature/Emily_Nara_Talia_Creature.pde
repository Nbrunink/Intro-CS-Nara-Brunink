//name: emily park 
//date: 10/10/2022 
//sources: https://processing.org/reference (helped with learning some of the commands) 
//description: the character is humpty dumpty, but theoretically it's any cartoon egg :) 

size(1500, 1500);
background(#87ceEB);

push();

translate(30, 50);
scale(0.8);

//body
fill(#F2DA8A);
strokeWeight(0);
ellipse(320, 350, 350, 400);

//trousers
fill(#6F8FAF);
arc(320, 440, 300, 210, 0, PI);

//eyes
fill(#FFFFFF);
circle(280, 275, 60);
circle(350, 275, 60);
fill(#000000);
circle(280, 290, 30);
fill(#000000);
circle(350, 290, 30);

//arms
strokeWeight(0);
fill(#F2DA8A);
rect(80, 350, 70, 30);
rect(490, 350, 70, 30);

//hands
fill(#FFFDD0);
circle(75, 365, 40);
circle(565, 365, 40);

//bag
fill(#B59B7C);
triangle(565, 385, 595, 410, 555, 410);
rect(540, 410, 70, 50);




//nose
fill(#FF8BA0);
strokeWeight(0);
ellipse(315, 325, 45, 25);

//mouth
fill(#000000);
ellipse(316, 360, 20, 20);

//hat
fill(#000000);
rect(245, 70, 150, 100);
ellipse(320, 185, 200, 50);

//legs
fill(#6F8FAF);
strokeWeight(0);
rect(360, 535, 30, 100);
rect(260, 535, 30, 100);

//shoes
fill(#FFFDD0);
strokeWeight(0);
rect(360, 635, 50, 20);
rect(260, 635, 50, 20);

pop();

//PANDA

push();

translate(400, 0);
scale(0.7);

//face
fill(240, 234, 200);
ellipse(400, 200, 250, 225);

//eyes
fill(250, 250, 250);
ellipse(350, 150, 25, 50);
ellipse(450, 150, 25, 50);
fill(0, 0, 0);
ellipse(350, 165, 10, 20);
ellipse(450, 165, 10, 20);

//nose
fill(0, 0, 0);
ellipse(400, 200, 40, 25);

//ears
fill(0, 0, 0);
circle(300, 90, 75);
circle(500, 90, 75);

//smile
curve(300, 200, 350, 225, 450, 225, 500, 200);

//body
fill(0, 0, 0);
ellipse(400, 498, 300, 375);
fill(240, 234, 200);
ellipse(400, 500, 200, 275);

//arms
fill(0, 0, 0);
ellipse(250, 400, 50, 200);
ellipse(550, 400, 50, 200);
fill(240, 234, 200);
ellipse(250, 400, 25, 100);
ellipse(550, 400, 25, 100);


//feet
fill(0, 0, 0);
ellipse(325, 725, 100, 200);
ellipse(475, 725, 100, 200);
fill(240, 234, 200);
ellipse(325, 725, 50, 100);
ellipse(475, 725, 50, 100);


pop();


//PENGUIN 

translate(900, 50);
scale(1.2);


//bodystructure of pingüino black with flappers
stroke(#080602);
fill(#252023);
rect(65, 230, 55, 130);
rect(80, 200, 150, 230);
rect(70, 100, 145, 120);
rect(185, 230, 55, 125);

//belly white furry soft penguin (imagine texture)
fill(#f8edd8);
rect(85, 230, 80, 190);

/*feet(x, how far down, width, height)with directions on how to make feet rectangle. 
Yellow feet because they are cuter that way.
*/
noFill();
fill(#e6dd73);
rect(65, 415, 50, 15);
rect(145, 415, 48, 16);

/*beak yellow cause why not yellow it makes it look more like a cartoon also weird low line
in the bottom middle cause i couldnt figure out how to get it higher. Always admit to your
fualts faults" :D
*/
fill(#e6dd73);
noStroke();
rect(90, 150, 100, 50);
stroke(#6e5014);
strokeWeight(3);
line(90, 190, 190, 190);
