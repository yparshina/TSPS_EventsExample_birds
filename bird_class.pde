//****************************** BIRD CLASS ****************************************************************
class bird {

  //---------------------------------- BIRD VARS ------------------------------------ 
  int posX, posY, bSize;
  
  int counter;

  int speedX, speedY, randomizer;


  //---------------------------------- CONSTRUCTOR ------------------------------------ 
  bird() {
    posX = int(random(0, width));
    posY = int(random(0, height));
    bSize = int(random(15, 20));

    speedX = 1;
    speedY = 1;

    randomizer = int(random(1,120));
    
    counter = 0;
  }

  //---------------------------------- DRAW BIRD ------------------------------------ 
  void drawBird() {
    noStroke();
    
    if (counter <= 255){
      counter+=2;
      
    } else {
      counter=255;
    }
    
    fill(255, 0+counter, 0+counter);
    ellipse(posX, posY, bSize, bSize);
  

  }

  void moveBird() {
    randomizer = int(random(1,120));
    
    posX+= speedX;
    posY+= speedY;

    if (randomizer==99 || posX <= bSize/2 || posX >= (width-bSize/2)) {
      speedX = speedX*-1;
    }

    if (randomizer==26 || posY <= bSize/2 || posY >= (height-bSize/2))  {
      speedY = speedY*-1;
    }
    
    
  }
}







