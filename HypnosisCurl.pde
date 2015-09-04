float w = 300;
float h = 300;
float centerX = 0;
float centerY = 0;
float subtracter = 0;
float degrees = 0;
float subtracterAdder = 0.5;
float degreeAdder =  0.1;
void setup() {
  centerX = w / 2;
  centerY = h / 2;
  size((int)w, (int)h);
  background(0);
  noFill();
  stroke(255);
  strokeWeight(1);
}

void draw() {
  arc(centerX, centerY, w + subtracter ,h + subtracter , degrees - 0.3, degrees);
  subtracter -= subtracterAdder;
  degrees += degreeAdder;
  if (h + subtracter < 10) {
    degreeAdder *= -1;
    subtracterAdder *= -1;
    stroke(0);
    strokeWeight(2);
  }
  
  if (subtracter >= 0) {
    degreeAdder *= -1;
    subtracterAdder *= -1;
    stroke(255);
    strokeWeight(1);
  }
}

