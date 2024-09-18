

int xWarde = 5;
int yWarde = 0;


void setup(){
  

  size (500,500);

}

void draw(){

background(255,255,255);
  xWarde++;
  yWarde +=25;
  
  if (xWarde>=500){
  
    xWarde = -3;
  }
  
  if (yWarde>=500){
  
    yWarde = 0;
  }
  rect(xWarde,yWarde,20,20);

}
