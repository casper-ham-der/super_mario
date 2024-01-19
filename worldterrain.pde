boolean groundOrBlock(float xPos, float yPos){
  if (yPos < ground(xPos, yPos)) {
    return false;
  }
  return true;
}

float ground(float xPos, float yPos) {
  return (208-1)*10/3+10/3;
}

class Ground {
  
  float x1, y1, x2, y2;
  
  void setPos(float xx1, float yy1, float xx2, float yy2) {
    this.x1 = xx1;
    this.y1 = yy1;
    this.x2 = xx2;
    this.y2 = yy2;
  }
  
  float getPos() {
    return this.x1;
  }
  
  float getWidth() {
    return this.x2-this.x1;
  }
}
