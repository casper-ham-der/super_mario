int counterStart = 60;
int counterSave = 0;
int cursorInt = 0;
boolean deletable = false;
boolean pressedDelete = false;

void startScreenLoad() {
  if (counterStart < 60) {
    loadingScreen();
    counterStart++;
  } else {

    image(startScreenImage, 100, 0);

    text("play game", 610, 513);
    text("Options", 640, 571);

    if (mouseY > 470 && mouseY < 520 && mouseX > 540 && mouseX < 860) {
      cursor = true;
      image(buttonIndicator, 540, 470);
      if (mousePressed && !mousePressor) {
        startScreen = false;
        counterStart = 0;
        savesScreen = true;
      }
    } else if (mouseY > 530 && mouseY < 600 && mouseX > 540 && mouseX < 860) {
      cursor = true;
      image(buttonIndicator, 540, 528);
      if (mousePressed && !mousePressor) {
      }
    } else {
      cursor = false;
    }
  }
}



void loadingScreen() {
  cursor = false;
  if (levelEntered) {
    image(marioHead, 570, 300);

    textSize(20);
    text("x", 570+44*1.5+10, 300+28*1.5/2+12);
    textSize(30);
    if (lives > 10) {
      text(lives, 570+44*1.5+40, 300+28*1.5/2+15);
    } else {
      text("0"+lives, 570+44*1.5+40, 300+28*1.5/2+15);
    }

    text(world + "-" + level, width/2-textWidth(world + "-" + level)/2-40, 450);
  }
}



void savesScreenLoad() {
  if (counterSave < 60) {
    loadingScreen();
    counterSave++;
  } else {
    image(saveScreen, 100, 0);

    if (!deletable) {
      text("back", 700-textWidth("back")/2, 600);
      text("Delete Safe", 700-textWidth("Delete Safe")/2, 670);



      if (mouseY > 670-40 && mouseY < 700 && mouseX > 700-textWidth("Delete Safe")/2-65 && mouseX < 700+textWidth("Delete Safe")/2+10) {
        cursor = true;
        buttonIndicator.resize(55, 50);
        image(buttonIndicator, 700-textWidth("Delete Safe")/2-65, 670-40 );
        if (mousePressed && !mousePressor) {
          if (!pressedDelete) {
            deletable = true;
            pressedDelete = true;
          }
        } else {
          pressedDelete = false;
        }
      } else {
        cursorInt++;
      }


      if (mouseY > 600-40 && mouseY < 630 && mouseX > 700-textWidth("back")/2-65 && mouseX < 700+textWidth("back")/2+10) {
        cursor = true;
        buttonIndicator.resize(55, 50);
        image(buttonIndicator, 700-textWidth("back")/2-65, 600-40 );
        if (mousePressed && !mousePressor) {
          savesScreen = false;
          counterSave = 0;
          startScreen = true;
        }
      } else {
        cursorInt++;
      }
    } else {
      text("cancel", 700-textWidth("cancel")/2, 640);

      if (mouseY > 640-40 && mouseY < 670 && mouseX > 700-textWidth("cancel")/2-65 && mouseX < 700+textWidth("cancel")/2+10) {
        cursor = true;
        buttonIndicator.resize(55, 50);
        image(buttonIndicator, 700-textWidth("cancel")/2-65, 640-40 );
        if (mousePressed && !mousePressor) {
          if (!pressedDelete) {
            deletable = false;
            pressedDelete = true;
          }
        } else {
          pressedDelete = false;
        }
      } else {
        cursorInt++;
      }
    }


    String loadSaveCheck1 = save1Load().get("load");
    if (loadSaveCheck1.equals("false")) {
      textSize(20);
      text("empty slot", 380, 330);
      textSize(30);
      if (mouseY > 187 && mouseY < 476 && mouseX > 318 && mouseX < 634) {
        cursor = true;
        buttonIndicatorGreen.resize(55, 50);
        image(buttonIndicatorGreen, 380-65, 330-40 );
        if (mousePressed && !mousePressor) {
          savesScreen = false;
          counterSave = 0;
          world11 = true;
          time = 400;
          levelEntered = true;
          lives = int(save1Load().get("lives"));
          world = int(save1Load().get("world"));
          level = int(save1Load().get("level"));
          save = 1;
        }
      } else {
        cursorInt++;
      }
    } else {

      textSize(25);
      text("slot 1", (634-318)/2+318-textWidth("slot 1")/2, 187+50);

      marioHead = loadImage("textures/on_screen_icons/mario_head.png");
      marioHead.resize(int(44*1), int(28*1));
      image(marioHead, (634-318)/2+318-textWidth("slot 1")/2+20, 187+100);
      marioHead = loadImage("textures/on_screen_icons/mario_head.png");
      marioHead.resize(int(44*1.5), int(28*1.5));

      textSize(15);
      text("x", (634-318)/2+318-textWidth("slot 1")/2+40, 187+128);
      textSize(25);

      int lives1 = int(save1Load().get("lives"));

      if (lives1 >= 10) {
        text(lives1, (634-318)/2+318-textWidth("slot 1")/2+90, 187+128);
      } else {
        text("0"+lives1, (634-318)/2+318-textWidth("slot 1")/2+90, 187+128);
      }

      int world1 = int(save1Load().get("world"));
      int level1 = int(save1Load().get("level"));

      text(world1 + "-" + level1, (634-318)/2+318-textWidth("slot 1")/2+45, 187+210);

      if (mouseY > 187 && mouseY < 476 && mouseX > 318 && mouseX < 634) {
        cursor = true;
        image(buttonIndicatorGreen, (634-318)/2+318-textWidth("slot 1")/2-65, 187+5);
        if (mousePressed && !mousePressor) {
          if (!deletable) {
            savesScreen = false;
            counterSave = 0;
            time = 400;
            levelEntered = true;
            lives = int(save1Load().get("lives"));
            world = int(save1Load().get("world"));
            level = int(save1Load().get("level"));
            startWorld(world, level);
            save = 1;
          } else {
            deleteSafe(1);
            deletable = false;
          }
        }
      } else {
        cursorInt++;
      }
      textSize(30);
    }


    String loadSaveCheck2 = save2Load().get("load");
    if (loadSaveCheck2.equals("false")) {
      textSize(20);
      text("empty slot", 1400-370-textWidth("empty slot"), 330);
      if (mouseY > 187 && mouseY < 476 && mouseX > 760 && mouseX < 1087) {
        cursor = true;
        image(buttonIndicatorGreen, 1400-370-textWidth("empty slot")-65, 330-40 );
        if (mousePressed && !mousePressor) {
          savesScreen = false;
          counterSave = 0;
          world11 = true;
          time = 400;
          levelEntered = true;
          lives = int(save2Load().get("lives"));
          world = int(save2Load().get("world"));
          level = int(save2Load().get("level"));
          save = 2;
        }
      } else {
        cursorInt++;
      }
      textSize(30);
    } else {

      textSize(25);
      text("slot 2", (1087-760)/2+760-textWidth("slot 2")/2, 187+50);

      marioHead = loadImage("textures/on_screen_icons/mario_head.png");
      marioHead.resize(int(44*1), int(28*1));
      image(marioHead, (1087-760)/2+760-textWidth("slot 2")/2+20, 187+100);
      marioHead = loadImage("textures/on_screen_icons/mario_head.png");
      marioHead.resize(int(44*1.5), int(28*1.5));

      textSize(15);
      text("x", (1087-760)/2+760-textWidth("slot 2")/2+40, 187+128);
      textSize(25);

      int lives2 = int(save2Load().get("lives"));

      if (lives2 >= 10) {
        text(lives2, (1087-760)/2+760-textWidth("slot 2")/2+90, 187+128);
      } else {
        text("0"+lives2, (1087-760)/2+760-textWidth("slot 2")/2+90, 187+128);
      }

      int world2 = int(save2Load().get("world"));
      int level2 = int(save2Load().get("level"));

      text(world2 + "-" + level2, (1087-760)/2+760-textWidth("slot 2")/2+45, 187+210);

      if (mouseY > 187 && mouseY < 476 && mouseX > 760 && mouseX < 1087) {
        cursor = true;
        image(buttonIndicatorGreen, (1087-760)/2+760-textWidth("slot 2")/2-65, 187+5);
        if (mousePressed && !mousePressor) {
          if (!deletable) {
            savesScreen = false;
            counterSave = 0;
            time = 400;
            levelEntered = true;
            lives = int(save2Load().get("lives"));
            world = int(save2Load().get("world"));
            level = int(save2Load().get("level"));
            startWorld(world, level);
            save = 2;
          } else {
            deleteSafe(2);
            deletable = false;
          }
        }
      } else {
        cursorInt++;
      }
      textSize(30);
    }
  }

  println(cursorInt);
  if (!deletable) {
    if (cursorInt == 4) {
      cursor = false;
    }
  } else {
    if (cursorInt == 3) {
      cursor = false;
    }
  }

  cursorInt = 0;
}



void deleteSafe(int i) {
  if (i == 1) {
    save1Save("load", "false");
    save1Save("lives", "3");
    save1Save("level", "1");
    save1Save("world", "1");
  } else if (i == 2) {
    save2Save("load", "false");
    save2Save("lives", "3");
    save2Save("level", "1");
    save2Save("world", "1");
  }
}
