int x = 50;
int y = 50;
int grote = 20;
int horSpeed = 3;
int yhorSpees = 2;

void setup(){
  
  size(1000,500);

}


void draw(){
  
  background(0);
  x += horSpeed;
  y += yhorSpees;
  
  
  fill( 0,140,0);
  
  
  ellipse(x,y, grote,grote);
  
  if (x > 1000){
    horSpeed = -3;

}

if (x < grote/2){

    horSpeed = 3;
}

  if (y > 500){
    yhorSpees = -3;

}

if ( y< grote/2){

     yhorSpees = 3;
}


 
}
