String userChoice = "NotChosen";
float rand;
String computerChoice = "NotChosen";
int you = 0;
int computer = 0;
int tie = 0;
String result = " ";

void setup() {
  size(700, 700);
  textSize(30);
}

void draw() {
  background(250);
  fill(255);

  if (userChoice == "Rock") {
    fill(#59AAFA);
  } else {
    fill (255);
  }
  rect(width/3 - 100, 100, 100, 50);


  if (userChoice == "Paper") {
    fill(#59AAFA);
  } else {
    fill (255);
  }
  rect(width/3 + 50, 100, 100, 50);


  if (userChoice == "Scissors") {
    fill(#59AAFA);
  } else {
    fill(255);
  }
  rect(width/3 + 200, 100, 100, 50);


  fill(0);
  text("Rock", width/3 - 80, 140);
  text("Paper", width/3 + 65, 140);
  text("Scissors", width/3 + 200, 140);

  text("Computer:", 300, 400);
  text(computerChoice, 300, 500);

  text("You:", 150, 600);
  text(you, 225, 600);

  text("Computer:", 275, 600);
  text(computer, 425, 600);

  text("Tie:", 500, 600);
  text(tie, 550, 600);
  text(result, 300, 300);

  
}


void mousePressed() {

  if (mouseX > width/3 - 80 &&
    mouseX < width/3 &&
    mouseY > 100 && mouseY < 150) {
    userChoice = "Rock";
    rand = (int) random(3);
  } else if (mouseX > width/3 + 50 &&
    mouseX < width/3 + 150 &&
    mouseY > 100 && mouseY < 150) {
    userChoice = "Paper";
    rand = (int) random(3);
  } else if (mouseX > width/3 + 200 &&
    mouseX < width/3 + 300 &&
    mouseY > 100 && mouseY < 150) {
    userChoice = "Scissors";
  } else {
    userChoice = "Not Chosen";
  }

  if (rand == 0) {
    computerChoice = "Rock";
  } else if (rand == 1) {
    computerChoice = "Paper";
  } else if (rand == 2) {
    computerChoice = "Scissors";
  } else {
    computerChoice = "Not Chosen";
  }
  
  if ((userChoice == "Rock" && computerChoice == "Scissors")||
    (userChoice == "Scissors" && computerChoice == "Paper")||
    (userChoice == "Paper" && computerChoice == "Rock")) {
    result = "YOU WIN";
    you = you + 1;
  } else if ((userChoice == "Rock" && computerChoice == "Paper")||
    (userChoice == "Scissors" && computerChoice == "Rock")||
    (userChoice == "Paper" && computerChoice == "Scissors")) {
    result = "COMPUTER WINS";
    computer = computer + 1;
  } else if ((userChoice == "Rock" && computerChoice == "Rock")||
    (userChoice == "Scissors" && computerChoice == "Scissors")||
    (userChoice == "Paper" && computerChoice == "Paper")) {
   result = "TIE";
    tie = tie + 1;
  }
}
