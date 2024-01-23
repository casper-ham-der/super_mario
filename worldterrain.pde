float[] blocksX = {};
float[] blocksY = {};
float[] blocksLength = {};
float[] blocksHeight = {};
int groundBlock = 0;

boolean groundOrBlock(float xPos, float yPos, String direction) {

  if (direction.equals("top")) {
    for (int i = 0; i < blocksX.length; i++) {
      if (yPos > blocksY[i] && xPos+pxConv(1) > blocksX[i]+(screenXPos) && xPos-pxConv(1) < blocksX[i]+(screenXPos)+blocksLength[i]) {
        groundBlock = i;
        return true;
      }
    }
  }
  return false;
}

float pxConv (float pixel) {
  return (pixel)*10/3+10/3;
}

void groundBlockIn() {
  if (world == 1) {
    if (level == 1) {
      blockLoads(0, 207, 1104, 240-207);
      
      blockLoads(448, 175, 480-448, 207-175);
      
      blockLoads(1136, 207, 1376-1136, 240-207);
      
      blockLoads(1424, 207, 2448-1424, 240-207);
      
      blockLoads(2480, 207, 3312-2480, 240-207);
      
    } else if (level == 2) {
      blockLoads(0, 207, 384, 207-240);
      
      blockLoads(2400, 207, 2896-2400, 240-207);
      
    } else if (level == 3) {
      blockLoads(0, 111, 48, 240-111);
      
      blockLoads(48, 127, 16, 240-127);
      
      blockLoads(64, 143, 16, 240-143);
      
      blockLoads(80, 159, 208-80, 240-159);
      
      blockLoads(240, 159, 416-240, 240-159);
      
      blockLoads(464, 159, 512-464, 240-159);
      
      blockLoads(560, 143, 1152-560, 240-143);
      
      blockLoads(1152, 159, 1664-1152, 240-159);
      
      blockLoads(1664, 207, 1856-1664, 240-207);
      
      blockLoads(1856, 159, 1920-1856, 240-156);
      
      blockLoads(1920, 207, 1968-1920, 240-207);
      
      blockLoads(1968, 159, 2256-1968, 240-159);
      
    }
  } else if (world == 2) {
    if (level == 1) {
      
      blockLoads(0, 207, 1104, 240-207);
      
    } else if (level == 2) {
    } else if (level == 3) {
    }
  } else if (world == 3) {
    if (level == 1) {
    } else if (level == 2) {
    } else if (level == 3) {
    }
  } else if (world == 4) {
    if (level == 1) {
    } else if (level == 2) {
    } else if (level == 3) {
    }
  } else if (world == 5) {
    if (level == 1) {
    } else if (level == 2) {
    } else if (level == 3) {
    }
  } else if (world == 6) {
    if (level == 1) {
    } else if (level == 2) {
    } else if (level == 3) {
    }
  }
}

void blockLoads(float blockX, int blockY, float blockLength, float blockHeight) {
        blocksX = append(blocksX, pxConv(blockX));
        blocksY = append(blocksY, pxConv(blockY));
        blocksLength = append(blocksLength, pxConv(blockLength));
        blocksHeight = append(blocksHeight, pxConv(blockHeight));
}
