void setup(){

  size(250,250);
  
  background(0255,0);
  
  
 int beginpunt = 100;
  
  for (int i = 0; i < 5; i++)  {
  
    ellipse(250 - beginpunt/2,198 - beginpunt/2, beginpunt,beginpunt);
    beginpunt = beginpunt - 10;
  
  }

}
