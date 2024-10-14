int[] ballX = {300};
int[] ballY = {150};

int[] ballSnelheidX = {3};
int[] ballSnelheidY = {3};

int ballSize = 20;

int paddleX, paddleY;

int paddleWidth = 100, paddleHeight = 10;

int paddleSnelheid = 7;

int score = 0;

void setup() {
  size(600, 400);

  // Paddle positie
  paddleX = width / 2 - paddleWidth / 2;
  paddleY = height - 40;
}

void draw() {
  background(0, 51, 0);

  // Beweeg de bal
  for (int i = 0; i < ballX.length; i++) {

    fill(150, 0, 0);
    ellipse(ballX[i], ballY[i], ballSize, ballSize);

    ballX[i] += ballSnelheidX[i];
    ballY[i] += ballSnelheidY[i];

    // Botsing met de zijkanten
    if (ballX[i] < 0 || ballX[i] > width - ballSize) {
      ballSnelheidX[i] *= -1; // Verander de richting van de bal in de X-richting
    }

    // Botsing met de bovenkant
    if (ballY[i] < 0) {
      ballSnelheidY[i] *= -1; // Verander de richting van de bal in de Y-richting
    }

    // Bal raakt het paddle
    if (ballY[i] + ballSize >= paddleY && ballX[i] > paddleX && ballX[i] < paddleX + paddleWidth) {
      ballSnelheidY[i] *= -1;
      score++;
    }

    // Als de bal de onderkant raakt, is het spel voorbij
    if (ballY[i] > height) {
      fill(150, 0, 0);
      textAlign(CENTER);
      textSize(35);
      text("lyiz xelas ", width / 2, height / 2);
      noLoop();
    }
  }

  // Paddle tekenen
  fill(150, 0, 0);
  rect(paddleX, paddleY, paddleWidth, paddleHeight);

  // Score weergeven
  fill(255);
  textSize(20);
  text("Hijmar " + score, 50, 30);

  // Paddle bewegen
  if (keyPressed) {
    if (key == CODED) {
      if (keyCode == LEFT && paddleX > 0) {
        paddleX -= paddleSnelheid;
      } else if (keyCode == RIGHT && paddleX < width - paddleWidth) {
        paddleX += paddleSnelheid;
      }
    }
  }
}
