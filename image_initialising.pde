PImage level11;
PImage level12;
PImage level13;
PImage level21;
PImage level22;
PImage level23;
PImage level31;
PImage level32;
PImage level33;
PImage level41;
PImage level42;
PImage level43;
PImage level51;
PImage level52;
PImage level53;
PImage level61;
PImage level62;
PImage level63;
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
  level12.resize(int(pxConv(3072)), (720)*10/3+10/3);

  level13 = loadImage("textures/screens/level1-3.png");
  level13.resize(int(pxConv(3328)), (240)*10/3+10/3);

  level21 = loadImage("textures/screens/level2-1.png");
  level21.resize(int(pxConv(3584)), (720)*10/3+10/3);

  level22 = loadImage("textures/screens/level2-2.png");
  level22.resize(int(pxConv(4608)), (240)*10/3+10/3);

  level23 = loadImage("textures/screens/level2-3.png");
  level23.resize(int(pxConv(3328)), (240)*10/3+10/3);

  level31 = loadImage("textures/screens/level3-1.png");
  level31.resize(int(pxConv(3840)), (480)*10/3+10/3);

  level32 = loadImage("textures/screens/level3-2.png");
  level32.resize(int(pxConv(3228)), (240)*10/3+10/3);

  level33 = loadImage("textures/screens/level3-3.png");
  level33.resize(int(pxConv(3840)), (240)*10/3+10/3);

  level41 = loadImage("textures/screens/level4-1.png");
  level41.resize(int(pxConv(4096)), (240)*10/3+10/3);

  level42 = loadImage("textures/screens/level4-2.png");
  level42.resize(int(pxConv(3840)), (720)*10/3+10/3);

  level43 = loadImage("textures/screens/level4-3.png");
  level43.resize(int(pxConv(3328)), (240)*10/3+10/3);
  
  level51 = loadImage("textures/screens/level5-1.png");
  level51.resize(int(pxConv(3328)), (480)*10/3+10/3);

  level52 = loadImage("textures/screens/level5-2.png");
  level52.resize(int(pxConv(4608)), (240)*10/3+10/3);

  level53 = loadImage("textures/screens/level5-3.png");
  level53.resize(int(pxConv(4352)), (240)*10/3+10/3);
  
  level61 = loadImage("textures/screens/level6-1.png");
  level61.resize(int(pxConv(6400)), (480)*10/3+10/3);

  level62 = loadImage("textures/screens/level6-2.png");
  level62.resize(int(pxConv(4608)), (240)*10/3+10/3);

  level63 = loadImage("textures/screens/level6-3.png");
  level63.resize(int(pxConv(5120)), (480)*10/3+10/3);

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
