size(200,200);
background(255,255,255);

int beginpunt = 100;

;

for(int i =0; i < 5; i++){
  ellipse(100 - beginpunt/2, 100 - beginpunt/2, beginpunt,beginpunt);
  beginpunt = beginpunt - 10;
  println("groter");
  
  delay(100);
}
