import controlP5.*;

ControlP5 cp;
Button knop1 , knop2;

void setup() {
  size(800, 600);
  cp = new ControlP5(this);
  
   
    knop1 = cp.addButton("knop1") .setPosition(400,400) .setSize(400,200)  . setCaptionLabel ("KlikMij");

    knop2  = cp .addButton ("kno p2") .setPosition(400,200) .setSize (400,150) .setCaptionLabel  ("klikMij1");


}
void draw(){

}

void knop1(){

  println("goedgedaan");

}

void knop2(){


  println("Helaas fout");

}
