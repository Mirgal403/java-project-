float gewicht;

float lengte;

float bmi;

gewicht = 110;

lengte = 180;

float lengteInMeters = lengte / 100;

 bmi = gewicht / (lengteInMeters * lengteInMeters);

println("Met een gewicht van " + gewicht + "kg een lengte van " + lengte + "cm, jouw BMI " + round(bmi) + ".");
