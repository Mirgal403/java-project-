size(500, 500);
background(255, 255, 255);

int grootte = 60;  

for (int i = 0; i < 5; i++) {
  int x = 100 + i * grootte;  
  int y = 100 + i * grootte;
  rect(x, y, grootte, grootte);  
}
