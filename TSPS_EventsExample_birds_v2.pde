
/**
 TSPS Events Example
 by Brett Renfer, 4/5/12
 
 Show text when new people enter and leave!
 */

// import TSPS
import tsps.*;
TSPS tspsReceiver;

int lastDrawn = 0;

// --------------------------- vars: BIRDS -----------------------------------
//bird myBird;
ArrayList flock;


//****************************** SETUP ************************************************************
void setup() {
  size(600, 600);
  background( 0 );
  noStroke();

  //all you need to do to start TSPS
  tspsReceiver= new TSPS(this, 12000);

  // --------------------------- setup: BIRDS -----------------------------------
  //myBird = new bird();


  flock = new ArrayList();
};

//****************************** DRAW ************************************************************
void draw() {
  background(0);

// --------------------------- draw: TSPS --------------------------------------
/*
  // we haven't seen anyone in 3 seconds, time to complain!
  if ( tspsReceiver.people.size() == 0 && millis() - lastDrawn > 3000 ) {
  }
*/


  // --------------------------- draw: BIRDS -----------------------------------

for (int i = 0; i < flock.size(); i++) {

    bird myBird = (bird) flock.get(i);
    myBird.drawBird();
    myBird.moveBird();
  }



}
//****************************** PERSON ENTERED ****************************************************************
void personEntered( TSPSPerson p ) {




  // --------------------------- person entered: BIRDS -----------------------------------

  flock.add(new bird());

  println (flock.size());
}


/*
  //****************************** PERSON UPDATED ***************************************************************
 void personUpdated( TSPSPerson p ) {
 }
 
 
 //****************************** PERSON LEFT *****************************************************************
 void personLeft( TSPSPerson p ) {

   flock.remove(1);
 }
*/
