boolean startScreen = true;
boolean loadingscreen = false;
boolean levelEntered = false;
boolean savesScreen = false;
boolean world11 = false;
boolean world12 = false;
boolean world13 = false;
boolean world21 = false;
boolean world22 = false;
boolean world23 = false;
boolean world31 = false;
boolean world32 = false;
boolean world33 = false;
PFont font;
int coins = 0;
int world = 1;
int level = 1;
int time = 0;
int lives = 0;
int save = 0;
boolean cursor = false;
boolean mousePressor = false;

void setup() {
  imageLoader();
  size(1400, 800);
  font = createFont("Typografi/super-mario-bros-nes.ttf", 32);
  textFont(font);
}

void draw() {
  if (cursor) {
    cursor(cursorFocused);
  } else {
    cursor(cursorUnfocused);
  }
  textSize(30);
  background(0);
  if (startScreen) {
    startScreenLoad();
  } else if (loadingscreen) {
    loadingScreen();
  } else if (savesScreen) {
    savesScreenLoad();
  } else if (world11) {
    world11Load();
  } else if (world12) {
    world12Load();
  } else if (world13) {
    world13Load();
  } else if (world21) {
    world21Load();
  } else if (world22) {
    world22Load();
  } else if (world23) {
    world23Load();
  } else if (world31) {
    world31Load();
  } else if (world32) {
    world32Load();
  }
  
  
  if (mousePressed) {
    mousePressor = true;
  } else {
    mousePressor = false;
  }
  
  
  playerLoad();
  screenInfoLoad();
  println(screenXPos);
  println(win);
}

void screenInfoLoad() {
  image(coinCount, 520, 53);

  text("Mario", 200, 50);
  text("000000", 200, 80);

  textSize(20);
  text("x", 550, 80);
  textSize(30);
  if (coins > 10) {
    text(coins, 575, 80);
  } else {
    text("0"+coins, 575, 80);
  }

  text("world", 800, 50);
  text(world + "-" + level, 800+(textWidth("world")/2)- (textWidth(world + "-" + level)/2), 80);

  text("time", 1050, 50);
  if (time > 0) {
    text(time, 1050+(textWidth("time")/2)- (textWidth(time+"")/2), 80);
  }

  fill(0);
  rect(0, 0, 100, height);
  rect(width-100, 0, 100, height);
  fill(255);
}

void playerLoad() {
  xPos += xSpeed;
  yPos += ySpeed;
  if (!win) {
    if (!groundOrBlock(xPos, yPos)) {
      ySpeed += ((29.46*3.8)/60);
    } else {
      ySpeed = 0;
      yPos = ground(xPos, yPos);
      pressed = false;
    }
  }
}
