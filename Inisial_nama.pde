float rotation = 0;
float x = 0;
float y = 0;
float zoomLevel = 1;

void settings() {
  size(1280, 768);
}

void setup() {
  background(255);
  strokeWeight(20);
  stroke(0, 155, 255);
}

void draw() {
  background(255);
  
  translate(width / 1.32 + x, height / 2 + y);  // Menggeser objek ke tengah layar
  scale(zoomLevel);
  rotate(rotation);

  float spacing = 250;

  // Huruf Z
  drawLetterZ(-width / 2 + 20, -height / 2 + 300, 100);
  
  // Huruf M
  drawLetterM(-width / 2 + 20 + spacing, -height / 2 + 300, 100);
  
  // Huruf A
  drawLetterA(-width / 2 + 20 + 2 * spacing, -height / 2 + 300, 100);
}

void drawLetterZ(float x, float y, float size) {
  line(x, y, x + size, y);
  line(x + size, y, x, y + size);
  line(x, y + size, x + size, y + size);
}

void drawLetterM(float x, float y, float size) {
  line(x, y, x, y + size);
  line(x, y, x + size / 2, y + size / 2);
  line(x + size / 2, y + size / 2, x + size, y);
  line(x + size, y, x + size, y + size);
}

void drawLetterA(float x, float y, float size) {
  line(x, y + size, x + size / 2, y);
  line(x + size / 2, y, x + size, y + size);
  line(x + size * 0.25, y + size / 2, x + size * 0.75, y + size / 2);
}

void keyPressed() {
  // Mengontrol rotasi
  if (key == 'l' || key == 'L') {
    rotation -= PI/100;
  } else if (key == 'r' || key == 'R') {
    rotation += PI/100;
  }
  
  // Mengontrol pergerakan
  if (key == 'w' || key == 'W') {
    y -= 10;
  } else if (key == 's' || key == 'S') {
    y += 10;
  }
  
  // Mengontrol pergerakan horizontal
  if (key == 'a' || key == 'A') {
    x -= 10;
  } else if (key == 'd' || key == 'D') {
    x += 10;
  } 
  
  // Mengontrol zoom
  if (key == '+' || key == '=') {
    zoomLevel += 0.1;
  } else if (key == '-' || key == '_') {
    zoomLevel -= 0.1;
  } 
}
