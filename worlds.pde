int counter = 0;
boolean turnRight = true;
boolean pressed = false;
boolean win = false;
boolean stopCheck = false;
float xPos;
float yPos;
float xSpeed;
float ySpeed;
float screenXPos = 100;
float screenYPos = 0;

void world11Load() {
  worldLoader(level11, 7168*800/480, 1600, 0, (206)*10/3+10/3, -9573, true, 1, 1);

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
    world22=false;
    world23 = true;
    nextLevel = false;
    win = false;
  }
}


void world23Load() {

  worldLoader(level23, ((240)*10/3+10/3)/240*3328, (240)*10/3+10/3, 0, (208-1)*10/3+10/3, -5300, false, 2, 3);
  if (nextLevel) {
    world23=false;
    world31 = true;
    nextLevel = false;
    win = false;
  }
}


void world31Load() {

  worldLoader(level31, ((480)*10/3+10/3)/480*3840, (480)*10/3+10/3, 0, (208-1)*10/3+10/3, -9803, true, 3, 1);
  if (nextLevel) {
    world31=false;
    world32 = true;
    nextLevel = false;
    win = false;
  }
}

void world32Load() {

  worldLoader(level32, ((240)*10/3+10/3)/240*3228, (240)*10/3+10/3, 0, (208-1)*10/3+10/3, -5843, true, 3, 2);
  if (nextLevel) {
    world32=false;
    world33 = true;
    nextLevel = false;
    win = false;
  }
}

void world33Load() {

  worldLoader(level33, ((240)*10/3+10/3)/240*3840, (240)*10/3+10/3, 0, (208-1)*10/3+10/3, -6840, false, 3, 3);
  if (nextLevel) {
    world33=false;
    world41 = true;
    nextLevel = false;
    win = false;
  }
}

void world41Load() {

  worldLoader(level41, ((240)*10/3+10/3)/240*4096, (240)*10/3+10/3, 0, (208-1)*10/3+10/3, -7932, true, 4, 1);
  if (nextLevel) {
    world41=false;
    world42 = true;
    nextLevel = false;
    win = false;
  }
}

void world42Load() {

  worldLoader(level42, ((720)*10/3+10/3)/720*3840, (720)*10/3+10/3, ((240)*10/3+10/3)-((480)*10/3+10/3), (208-1)*10/3+10/3, -9370, true, 4, 2);
  if (nextLevel) {
    world42=false;
    world43 = true;
    nextLevel = false;
    win = false;
  }
}

void world43Load() {

  worldLoader(level43, ((240)*10/3+10/3)/240*3328, (240)*10/3+10/3, 0, (208-1)*10/3+10/3, -5220, false, 4, 3);
  if (nextLevel) {
    world43=false;
    world51 = true;
    nextLevel = false;
    win = false;
  }
}

void world51Load() {

  worldLoader(level51, ((480)*10/3+10/3)/480*3328, (480)*10/3+10/3, 0, (208-1)*10/3+10/3, -7582, true, 5, 1);
  if (nextLevel) {
    world51=false;
    world52 = true;
    nextLevel = false;
    win = false;
  }
}

void world52Load() {

  worldLoader(level52, ((240)*10/3+10/3)/240*4608, (240)*10/3+10/3, 0, (208-1)*10/3+10/3, -9800, true, 5, 2);
  if (nextLevel) {
    world52=false;
    world53 = true;
    nextLevel = false;
    win = false;
  }
}

void world53Load() {

  worldLoader(level53, ((240)*10/3+10/3)/240*4352, (240)*10/3+10/3, 0, (208-1)*10/3+10/3, -8270, false, 5, 3);
  if (nextLevel) {
    world53=false;
    world61 = true;
    nextLevel = false;
    win = false;
  }
}

void world61Load() {

  worldLoader(level61, ((480)*10/3+10/3)/480*6400, (480)*10/3+10/3, 0, (208-1)*10/3+10/3, -17042, true, 6, 1);
  if (nextLevel) {
    world61=false;
    world62 = true;
    nextLevel = false;
    win = false;
  }
}

void world62Load() {

  worldLoader(level62, (pxConv(240))/240*4608, pxConv(240), 0, pxConv(207), -9270, true, 6, 2);
  if (nextLevel) {
    world62=false;
    world63 = true;
    nextLevel = false;
    win = false;
  }
}

void world63Load() {

  worldLoader(level63, (pxConv(480))/480*5120, pxConv(480), 0, pxConv(207), -12890, false, 6, 3);
  if (nextLevel) {
    world63=false;
    reset();
    nextLevel = false;
    win = false;
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
    groundBlocksY = new float[0];
    groundBlocksX = new float[0];
    groundBlockIn();
    
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
      ySpeed = 0;
      stopCheck = true;
      if (yPos > (40)*10/3+10/3) {
        if (poleLevel) {
          poleWin();
        } else {
          bossWin();
        }
        win = true;
      }
    }

    if (screenXPos > end || xPos < width-400) {
      stopCheck = false;
    }
  }
}
