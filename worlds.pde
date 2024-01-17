int counter = 0;
boolean turnRight = true;
boolean pressed = false;
boolean win = false;
float xPos;
float yPos;
float xSpeed;
float ySpeed;
float screenXPos = 100;
float screenYPos = 0;

void world11Load() {
  worldLoader(level11, 7168*800/480, 1600, 0, (208-1)*10/3+10/3, -9573, true, 1, 1);
  
  if (nextLevel) {
    world11=false;
    world12 = true;
    nextLevel = false;
    win = false;
  }
}

void world12Load() {
  worldLoader(level12, ((720-1)*10/3+10/3)/720*3072, (720-1)*10/3+10/3, 0, (208-1)*10/3+10/3, -7263, true, 1, 2);
  if (nextLevel) {
    world12=false;
    world13 = true;
    nextLevel = false;
    win = false;
  }
}

void world13Load() {
  
  worldLoader(level13, ((240)*10/3+10/3)/240*3328, (240)*10/3+10/3, 0, (208-1)*10/3+10/3, -5190, false, 1, 3);
  if (nextLevel) {
    world13=false;
    world21 = true;
    nextLevel = false;
    win = false;
  }

}


void world21Load() {
  
  worldLoader(level21, ((720)*10/3+10/3)/720*3584, (720)*10/3+10/3, ((240)*10/3+10/3)-((480)*10/3+10/3), (208-1)*10/3+10/3, -8613, true, 2, 1);
  if (nextLevel) {
    world21=false;
    world22 = true;
    nextLevel = false;
    win = false;
  }
}


void world22Load() {
  
  worldLoader(level22, ((240)*10/3+10/3)/240*4608, (240)*10/3+10/3, 0, (208-1)*10/3+10/3, -9810, true, 2, 2);
  if (nextLevel) {
    world21=false;
    world22 = true;
    nextLevel = false;
    win = false;
  }
}


void world23Load() {
  if (counter < 2.75*60) {
    if (save == 1) {
      save1Save("lives", String.valueOf(lives));
      save1Save("level", String.valueOf(level));
      save1Save("world", String.valueOf(world));
    } else {
      save2Save("lives", String.valueOf(lives));
      save2Save("level", String.valueOf(level));
      save2Save("world", String.valueOf(world));
    }
    screenXPos = 100;
    screenYPos = 0;
    world = 2;
    level = 3;
    xPos = 300;
    yPos = (208-1)*10/3+10/3;
    loadingScreen();
    counter++;
    xSpeed = 0;
    ySpeed = 0;
  } else {
    image(level23, screenXPos, screenYPos);

    if (keyPressed) {
      if (keyCode == RIGHT || key == 'd') {
        runningMario('r', ((240)*10/3+10/3)/240*3328);
      } else if (keyCode == LEFT || key == 'a') {
        runningMario('l', ((240)*10/3+10/3)/240*3328);
      } else if (keyCode == UP && !pressed || key == 'w' && !pressed) {
        jumpingMario();
      } else {
        xSpeed = 0;
        standMario();
      }
    } else {
      xSpeed = 0;
      standMario();
    }

    if ( !(screenXPos > -6380)) {
      world23 = false;
      world31 = true;
      counter = 0;
    }
  }
}


void world31Load() {
  if (counter < 2.75*60) {
    if (save == 1) {
      save1Save("lives", String.valueOf(lives));
      save1Save("level", String.valueOf(level));
      save1Save("world", String.valueOf(world));
    } else {
      save2Save("lives", String.valueOf(lives));
      save2Save("level", String.valueOf(level));
      save2Save("world", String.valueOf(world));
    }
    screenXPos = 100;
    screenYPos = 0;
    world = 3;
    level = 1;
    xPos = 300;
    yPos = (208-1)*10/3+10/3;
    loadingScreen();
    counter++;
    xSpeed = 0;
    ySpeed = 0;
  } else {
    image(level31, screenXPos, screenYPos);

    if (keyPressed) {
      if (keyCode == RIGHT || key == 'd') {
        runningMario('r', ((480)*10/3+10/3)/480*3840);
      } else if (keyCode == LEFT || key == 'a') {
        runningMario('l', ((480)*10/3+10/3)/480*3840);
      } else if (keyCode == UP && !pressed || key == 'w' && !pressed) {
        jumpingMario();
      } else {
        xSpeed = 0;
        standMario();
      }
    } else {
      xSpeed = 0;
      standMario();
    }

    if ( !(screenXPos > -19810)) {
      world23 = false;
      world31 = true;
      counter = 0;
    }
  }
}




void worldLoader(PImage levelImage, float levelWidth, float levelHeight, float screenStartPos, float marioStartPos, float end, boolean poleLevel, int worldNumber, int levelNumber) {
  
  if (counter < 2.75*60) {
    if (save == 1) {
      save1Save("load", "true");
      save1Save("lives", String.valueOf(lives));
      save1Save("level", String.valueOf(level));
      save1Save("world", String.valueOf(world));
    } else {
      save2Save("load", "true");
      save2Save("lives", String.valueOf(lives));
      save2Save("level", String.valueOf(level));
      save2Save("world", String.valueOf(world));
    }
    screenXPos = 100;
    screenYPos = screenStartPos;
    world = worldNumber;
    level = levelNumber;
    xPos = 300;
    yPos = marioStartPos;
    loadingScreen();
    counter++;
    xSpeed = 0;
    ySpeed = 0;
  } else {
    image(levelImage, screenXPos, screenYPos);

    if (!win) {
      if (keyPressed) {
        if (keyCode == RIGHT || key == 'd') {
          runningMario('r', levelWidth);
        } else if (keyCode == LEFT || key == 'a') {
          runningMario('l', levelWidth);
        } else if (keyCode == UP && !pressed || key == 'w' && !pressed) {
          jumpingMario();
        } else {
          xSpeed = 0;
          standMario();
        }
      } else {
        xSpeed = 0;
        standMario();
      }
    }
    
    if ( !(screenXPos > end)) {
      pressed = false;
      if (poleLevel) {
      poleWin();
      } else {
        bossWin();
      }
      win = true;
    }
  }
}
