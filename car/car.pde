void setup() {
  size(500, 500);
}

int x = 100, speed = -1, y = 0;

void draw() {
  noStroke();

  background(180, 200, 240);

  // draw the ground
  fill(110, 170, 120);
  rect(0, 310, width, height - 310);

  // draw a yellow car
  fill(150, 150, 150);
  ellipse(x + 30, 320 + y, 90, 20);

  fill(250, 250, 0);
  rect(x, 300 + y, 80, 20);
  rect(x + 10, 285 + y, 60, 15);

  fill(150, 170, 200);
  rect(x + 47, 287 + y, 20, 10);
  rect(x + 25, 287 + y, 20, 10);

  fill(0, 0, 0);
  ellipse(x + 20, 320 + y, 20, 20);
  ellipse(x + 60, 320 + y, 20, 20);

  y += speed;

  if (y < -350)
    speed = 1;
  else if (y > 250)
    speed = -1;
}

