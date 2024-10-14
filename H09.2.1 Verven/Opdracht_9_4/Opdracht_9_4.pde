void setup(){

size (500,500);

background(0,150,0);

vierKant(100,100,170,2);
}


void vierKant(float x ,float y, float lengte, float bredte){
  

line(x,y,x + lengte,y);

line(x,y,y,x + lengte);

line(x + lengte ,y + bredte,x  + lengte ,y + lengte );
  
line(x + lengte,y + lengte,x + bredte,y + lengte);}
