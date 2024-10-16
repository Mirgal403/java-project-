int[] ballX = {300, 370,420};
int[] ballY = {300, 200,100 };

int[] ballSnelheidX = {2, -3 ,3};
int[] ballSnelheidY = {2, -3,3};

//Ball[] ballen  = { new Bal(10,10, - 1), new Bal(100,20,1)};
int ballSize = 20;

int paddleX, paddleY;

int paddleWidth = 100, paddleHeight = 10;

int paddleSnelheid = 10;

int score = 0;

void setup() {
  size(600, 400);

  // om paddle op startpositie te doen
  resetPaddle();
}

void draw() {
  background(0, 102, 204);

  //als de i kleiner dan balox lengthe plusplus wat is de lenggthe de lenghte is 3
  for (int i = 0; i < ballX.length; i++) {
    fill(255, 165, 0);
    ellipse(ballX[i], ballY[i], ballSize, ballSize);

    // Beweging van de bal 
    ballX[i] += ballSnelheidX[i];
    ballY[i] += ballSnelheidY[i];


    // Botsing met de zijkanten
   
    
    if (ballX[i] < 0 || ballX[i] > width) {
      ballSnelheidX[i] *= -1; 
    }

    // Botsing met de bovenkant
    if (ballY[i] < 0) {
      ballSnelheidY[i] *= -1;
      
    }

    // Bal raakt het paddle
    if (ballY[i] + ballSize >= paddleY && ballX[i] > paddleX && ballX[i] < paddleX + paddleWidth) {
      ballSnelheidY[i] *= -1;
      score ++;
     
    }
    

    // Controleer of de bal de onderkant raakt
    if (ballY[i] > height) {
      fill(250, 250, 250);
      textAlign(CENTER);
      textSize(35);
      text("lyiz xelas", 250, 200 );
      noLoop();
    }
  }

  fill(0, 255, 0);
  rect(paddleX, paddleY, paddleWidth, paddleHeight);

  fill(255);
  textSize(20);
  text("Hijmar " + score, 50, 30);

  if (keyPressed) {
    if (key == CODED) {
      
      // paddle controleert of paddlex groter dan 0 is
      if (keyCode == LEFT && paddleX > 0) {

        paddleX -= paddleSnelheid;
      } else if (keyCode == RIGHT && paddleX < width - paddleWidth) {
        paddleX += paddleSnelheid;
      }
    }
  }
}



// Functie om de paddle op gooie plek te doen
void resetPaddle() {
  paddleX = width / 2 - paddleWidth / 2;
  paddleY = height - 40;
}
