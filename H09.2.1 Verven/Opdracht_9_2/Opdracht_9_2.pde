int mijnGetal = 8;

void setup() {
  int resultaat = gemiddelde(mijnGetal, 4);
  println ("Het gemiddelde is: " + resultaat);
}
void draw() {
}

int   gemiddelde (int getal, int getaltwee) {


  int totaal = (getal + getaltwee)/2;

return totaal;
}
