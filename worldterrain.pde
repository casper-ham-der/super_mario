float[] groundBlocksX = new float[0];
float[] groundBlocksY = new float[0];
int groundBlock = 0;

boolean groundOrBlock(float xPos, float yPos, String direction) {

  if (direction.equals("top")) {
    for (int i = 0; i < groundBlocksX.length; i++) {
      if (yPos > groundBlocksY[i] && xPos+pxConv(3) > groundBlocksX[i] && xPos-pxConv(3) < groundBlocksX[i]+pxConv(16)) {
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
      for (int i = 0; i < 69; i++) {
        groundBlocksX = append(groundBlocksX, (i)*10/3+10/3);
        groundBlocksY = append(groundBlocksY, pxConv(207));
      }
    } else if (level == 2) {
    } else if (level == 3) {
    }
  } else if (world == 2) {
    if (level == 1) {
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
