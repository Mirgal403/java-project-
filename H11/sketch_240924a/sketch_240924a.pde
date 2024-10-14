String[] koerd = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", 
                    "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"};

void setup(){

  size (500,500);
  background(255);
  textSize(20);

  for (int i = 0; i < koerd.length; i++) {
  text(koerd[i], 20,30+i*20);

  
  println (i);
  
}

}
void draw()
{}
