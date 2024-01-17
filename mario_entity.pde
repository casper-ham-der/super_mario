int numFrames = 4;
int currentFrame = 0;
int counterRun = 0;
int counterWin = 0;
boolean nextLevel = false;


void runningMario(char c, float screenLength) {

  pushMatrix();
  translate(xPos, yPos);

  if (c == 'r') {
    scale(1, 1);
    turnRight = true;
    xSpeed = 10;
    if (xPos > width-400) {
      xSpeed = 0;
      if ( screenXPos > -screenLength+(width-100)) {
        screenXPos -= 10;
      }
    }
  } else if (c == 'l') {
    scale(-1, 1);
    turnRight = false;
    xSpeed = -10;
    if (xPos < 300) {
      xSpeed = 0;
      if ( screenXPos < 100) {
        screenXPos += 10;
      }
    }
  }

  if (!pressed) {
    image(marioRun[currentFrame], -(30*400/480), -32*800/480);

    if (counterRun < 3) {
      counterRun++;
    } else {
      counterRun = 0;
      currentFrame++;
    }

    if (currentFrame > 3) {
      currentFrame = 0;
    }
  } else {
    image(marioJump, -(30*400/480), -32*800/480);
  }
  scale(1.0, 1.0);
  popMatrix();
}

void jumpingMario() {
  xSpeed = 0;
  pressed = true;
  ySpeed = (-10)*3;
}

void standMario() {
  pushMatrix();
  translate(xPos, yPos);
  if (turnRight) {
  } else {
    scale(-1, 1);
  }

  if (!pressed) {
    image(marioStand, -(30*400/480), -32*800/480);
  } else {
    image(marioJump, -(30*400/480), -32*800/480);
  }

  scale(1, 1);
  popMatrix();
}

void poleWin() {
  ySpeed = 0;
  
  pushMatrix();
  translate(xPos, yPos);
  image(marioPole, -(30*400/480), -32*800/480);

  if (counterWin < 0.5*60) {
    counterWin++;
  } else if (yPos < (193-1)*10/3+10/3) {
    ySpeed = 5;
  } else if (counterWin < 1*60) {
    ySpeed = 0;
    counterWin++;
  } else {
    counter = 0;
    counterWin = 0;
    nextLevel = true;
  }
  popMatrix();
}

void bossWin() {
  ySpeed = 0;
  counter = 0;
  counterWin = 0;
  nextLevel = true;
}
