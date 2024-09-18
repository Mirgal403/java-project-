size(700,700);
background(255,255,255);

int beginpunt = 300;

;

for(int i =0; i < 50; i++){
  ellipse(300 - beginpunt/2, 300 - beginpunt/2, beginpunt,beginpunt);
  beginpunt = beginpunt -6;
  println("groter");

}
