float rAngle =random(0.1,30);
float rFill = random(0,255);
float bgFill = random(200,255);
float rStroke = random(0.25,3);

void setup() {
  size(1350, 700);
  smooth();
  frameRate(10000);
}

void draw() {
  background(0,0,0);
  translate(width/2, height/2);

  float wave = sin(radians(frameCount)); 
  float w = wave*map(mouseX,0,height,2500,0);

  for (int i = 0; i <500; i++) {
    rotate(rAngle);
    stroke(255);
    
    line(850, i-w/2, -850, i++);
    strokeWeight(map(wave, -1, 1, 0.5,rStroke ));

    stroke(rFill);
    strokeWeight(map(wave, -1, 1, 0.5, rStroke));

    line(-850, -i+w, 550, i++);
    stroke(rFill, rFill, 0);

    strokeWeight(map(wave, -1, 1, 0.5, rStroke));
    line(-850, i-w, 850, i++);
 
  }
  saveFrame("Generative_rotation-####.jpg");
}
