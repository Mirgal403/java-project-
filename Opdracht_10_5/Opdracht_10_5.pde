import controlP5.*;

ControlP5 cp5;

Textfield getal1Input, getal2Input;

float resultaat;


void setup() {
  size(500, 150);
  
  cp5 = new ControlP5(this);
  
  getal1Input = cp5.addTextfield("hejmara1")
               .setPosition(50, 50)
               .setSize(100, 45)
               .setText("0");

  getal2Input = cp5.addTextfield("hejmara2")
               .setPosition(170, 50)
               .setSize(100, 30)
               .setText("0");

  String[] operator = {"+", "-", "*", "/"};

  for (int i = 0; i < operator.length; i++) {
    cp5.addButton(operator[i])
       .setPosition(300 + i * 50, 50)
       .setSize(40, 30)
       .onClick(e -> breken(e.getController().getName())); // Correcte methode aanroepen
  }

  textSize(16);
}

void draw() {
  background(255);
  text("Resultaat: " + resultaat, 50, 120);
}

void breken(String operatie) { // Naam moet overeenkomen
  float hejmara1 = float(getal1Input.getText());
  float hejmara2 = float(getal2Input.getText());

  switch (operatie) {
    case "+":
      resultaat = hejmara1 + hejmara2;
      break;
    case "-":
      resultaat = hejmara1 - hejmara2;
      break;
    case "*":
      resultaat = hejmara1 * hejmara2;
      break;
    case "/":
      resultaat = hejmara2 != 0 ? hejmara1 / hejmara2 : 0;
      break;
  }
}
