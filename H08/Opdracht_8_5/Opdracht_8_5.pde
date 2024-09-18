size(200,200);
background(255,255,255);

int groter = 100;

for(int i = 0; i < 5; i++){
  ellipse(100, 100, groter,groter);
  groter = groter - 10;
  println("groter");
  
  delay(100);
}
