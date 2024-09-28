int startX = 250;
int startY = 0;
int endX = 0;
int endY = 0;
int lineCount = 0;

void setup()
{
  size(700,800);
  strokeWeight(4);
  background(13);  
  frameRate(60);
}

void draw()
{
  lightning();

  fill(0);
  noStroke();
  rect(0, 600, 700, 700); 
 
  quad(15, 450, 80, 450, 90, 600, 15, 600);
  
  rect(100, 500, 70, 600); 
  rect(120, 450, 60, 300);
  
  rect(210, 350, 80, 300);
  rect(225, 330, 50, 20);
  rect(240, 280, 20, 50);

  rect(310, 550, 70, 70);
  rect(320, 500, 50, 100);
  rect(350, 450, 50, 150);
  rect(403, 440, 50, 160);
  rect(455, 450, 50, 150);

  rect(530, 550, 30, 80);
  rect(536, 520, 5, 30);
  
  rect(560, 570, 30, 30);
  
  rect(600, 410, 60, 190);
  quad(630, 400, 650, 400, 660, 430, 620, 430);
}

void lightning() 
{
  stroke(131,181,255);
  int direction = 1;
  if (Math.random() > 0.5 )
    direction = -1;
  if (lineCount < 50) {
    endX = (startX + (int)(Math.random() * 20 * direction));
    endY = (startY + (int)(Math.random() * 20));
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
    lineCount++;
  }
}

void mousePressed()
{
  lineCount = 0;
  startX = mouseX;
  startY = 0;
  endX = 0;
  endY = 0;
}
