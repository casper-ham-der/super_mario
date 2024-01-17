boolean groundOrBlock(float xPos, float yPos){
  if (yPos < ground(xPos, yPos)) {
    return false;
  }
  return true;
}

float ground(float xPos, float yPos) {
  return (208-1)*10/3+10/3;
}
