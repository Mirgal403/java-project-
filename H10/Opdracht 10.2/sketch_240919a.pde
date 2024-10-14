import controlP5.*;

ControlP5 cp;

Button knop1;

Textfield tekstveld1;

void setup(){

  size(800,800);
  
  background(255,255,255);
  
  cp = new ControlP5 (this);
  knop1 = cp.addButton("knop1");
  
  knop1  .setCaptionLabel("hier kliken ");
  
  
  tekstveld1 = cp
    
     .addTextfield("Textlnput1")
      .setPosition(100,100)
      .setText ("")
          .setCaptionLabel ("Type iets")
           .setColorLabel(color(255,0,0));

}

void draw(){
}

   
    void knop1(){
      println("Hallo mijn naam is  " + tekstveld1. getText() );
    
    
    }
