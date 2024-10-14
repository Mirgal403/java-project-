int miro  = 30;
int ali = 20;


void setup(){

  size(500,500);
  
textSize(20);  
}


void draw(){

    background(0,0,0);
    
    text("Ali tahir groep " + miro,325,50);
    text(" miro groep  " + ali,20,50);
        text("totaal" + (miro + ali),200,250);

}

void mousePressed(){

  if (mouseX < width/2){
  
  ali++;
  }
  else {
  
    miro++;
  }

}
