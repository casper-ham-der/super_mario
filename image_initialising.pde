PImage level11;
PImage level12;
PImage level13;
PImage level21;
PImage level22;
PImage level23;
PImage level31;
PImage[] marioRun = new PImage[4];
PImage coinCount;
PImage startScreenImage;
PImage buttonIndicator;
PImage marioHead;
PImage buttonIndicatorGreen;
PImage saveScreen;
PImage marioStand;
PImage marioJump;
PImage marioPole;
PImage cursorUnfocused;
PImage cursorFocused;

void imageLoader() {
  level11 = loadImage("textures/screens/level1-1.png");
  level11.resize(7168*800/480, 1600);
  
  level12 = loadImage("textures/screens/level1-2.png");
  level12.resize(((720-1)*10/3+10/3)/720*3072, (720-1)*10/3+10/3);
  
  level13 = loadImage("textures/screens/level1-3.png");
  level13.resize(((240)*10/3+10/3)/240*3328, (240)*10/3+10/3);
  
  level21 = loadImage("textures/screens/level2-1.png");
  level21.resize(((720)*10/3+10/3)/720*3584, (720)*10/3+10/3);
  
  level22 = loadImage("textures/screens/level2-2.png");
  level22.resize(((240)*10/3+10/3)/240*4608, (240)*10/3+10/3);
  
  level23 = loadImage("textures/screens/level2-3.png");
  level23.resize(((240)*10/3+10/3)/240*3328, (240)*10/3+10/3);
  
  level31 = loadImage("textures/screens/level3-1.png");
  level31.resize(((480)*10/3+10/3)/480*3840, (480)*10/3+10/3);

  marioRun[0] = loadImage("textures/entities/mario/running_1.png");
  marioRun[1] = loadImage("textures/entities/mario/running_2.png");
  marioRun[2] = loadImage("textures/entities/mario/running_3.png");
  marioRun[3] = loadImage("textures/entities/mario/running_2.png");
  for (int i = 0; i < numFrames; i++) {
    marioRun[i].resize(30*800/480, 32*800/480);
  }

  coinCount = loadImage("textures/on_screen_icons/coin_count.png");
  coinCount.resize(10/14*30, 30);

  startScreenImage = loadImage("textures/screens/start_screen.png");
  startScreenImage.resize(1200, 800);

  buttonIndicator = loadImage("textures/on_screen_icons/button_indicator.png");
  buttonIndicator.resize(55, 50);

  marioHead = loadImage("textures/on_screen_icons/mario_head.png");
  marioHead.resize(int(44*1.5), int(28*1.5));

  buttonIndicatorGreen = loadImage("textures/on_screen_icons/green_button_indicator.png");
  buttonIndicatorGreen.resize(55, 50);

  saveScreen = loadImage("textures/screens/save-screen.png");
  saveScreen.resize(1200, 800);
  
  marioStand = loadImage("textures/entities/mario/stand_still.png");
  marioStand.resize(30*800/480, 32*800/480);
  
  marioJump = loadImage("textures/entities/mario/jump.png");
  marioJump.resize(30*800/480, 32*800/480);
  
  marioPole = loadImage("textures/entities/mario/pole.png");
  marioPole.resize(30*800/480, 32*800/480);
  
  cursorUnfocused = loadImage("textures/on_screen_icons/cursor.png");
  
  cursorFocused = loadImage("textures/on_screen_icons/cursor_focus.png");
}
