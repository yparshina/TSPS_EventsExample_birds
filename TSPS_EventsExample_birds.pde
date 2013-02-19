
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
  size(1024, 768);
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
  }



}
//****************************** PERSON ENTERED ****************************************************************
void personEntered( TSPSPerson p ) {

  textAlign( CENTER );


  text( "Hello new person!", width / 2, height / 2 );


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
 background( 0 );
 int numPeopleLeft = tspsReceiver.people.size() - 1;
 
 fill( 255 );
 textAlign( CENTER );
 
 // no one left :(
 if (numPeopleLeft == 0) {
 text( "All alone again...", width / 2, height / 2 );
 } 
 else {
 text( "See ya!\nGlad I've got "+ numPeopleLeft +" more friends to kick it with.", width / 2, height / 2 );
 }
 lastDrawn = millis();
 }
 */
