class bird {

  //---------------------------------- BIRD VARS ------------------------------------ 
  int posX, posY, bSize;
  boolean makeBird;


  //---------------------------------- CONSTRUCTOR ------------------------------------ 
  bird() {
    posX = int(random(0, width));
    posY = int(random(0, height));
    bSize = int(random(50, 60));

    makeBird = false;
  }

  //---------------------------------- DRAW BIRD ------------------------------------ 
  void drawBird() {
    noStroke();
    fill(255, 0, 0);
    ellipse(posX, posY, bSize, bSize);
  }
}








