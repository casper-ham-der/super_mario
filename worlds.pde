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
  
  worldLoader(level43, ((240)*10/3+10/3)/240*3328, (240)*10/3+10/3, 0, (208-1)*10/3+10/3, -19370, false, 4, 3);
  if (nextLevel) {
    world43=false;
    world51 = true;
    nextLevel = false;
    win = false;
  }
}

void world51Load() {
}

void world52Load() {
}

void world53Load() {
}

void world61Load() {
}

void world62Load() {
}

void world63Load() {
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
