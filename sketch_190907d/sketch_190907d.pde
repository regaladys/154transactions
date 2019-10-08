int spacer, c, j, x, y, rCount, fColor;
Table table;

void setup() {
  size(4890, 4890);
  background(255);
  table = loadTable("all_1.csv", "header");
  rCount=table.getRowCount();
  spacer = 30;
  j = 0;
  noStroke();
  noLoop();  // Run once and stop
}

void draw() {
  for (int w = 0; w < width; w+=spacer) {
    for (int h = 0; h < height; h+=spacer) {
      x = w;
      y = h;
      fColor = table.getInt(j,0)*255/9;
      //fill(random(0,255));
      fill(fColor);
      square(x,y,30);
      j++;
      println(w);
    }
  } 
  save("sampler1-4890.png");
}
