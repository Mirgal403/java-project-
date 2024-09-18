size(500,500);
background(255,255,255);

int xWaarde = 10;
int yWaarde = 10;


fill(0,140,0);

for(int i = 0; i < 10; i++){
  for(int j = 0; j < 10; j++){
    
       if ((i + j) % 2 == 0) {
      fill(0); 
    } else {
      fill(255); 
    }
    
    rect(xWaarde, yWaarde, 20,20);
  yWaarde = yWaarde + 20;
}
yWaarde = 10;
xWaarde = xWaarde + 20;
}
