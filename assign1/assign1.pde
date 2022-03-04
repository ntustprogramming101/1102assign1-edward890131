
// declaring a variable of type PImage
PImage backgroundSky;
PImage backgroundSoil;
PImage hpLife;
PImage roleGroundhog;
PImage anmyRobot; 
PImage anmySoldier;

// x = left & right, y = up & down
// 1 is for soldier, 2 is for robot, 3 is for laser
int x1,y1,x2,y2,x3,y3;

void setup() {
	
  size(640, 480, P2D);
  
  // make a new instance of a PImage by loading an image file
  backgroundSky = loadImage("img/bg.jpg"); 
  backgroundSoil = loadImage("img/soil.png"); 
  hpLife = loadImage("img/life.png"); 
  roleGroundhog = loadImage("img/groundhog.png"); 
  anmyRobot = loadImage("img/robot.png"); 
  anmySoldier = loadImage("img/soldier.png");
  
  //soldier's y > 160
  y1=floor(random(160,400));
  
  //robot's > 160
  x2=floor(random(160,560));
  y2=floor(random(160,400));
  
  //laser's y
  x3 = x2+25;
  y3 = y2+37-5;
  
}

void draw() {
  
  //set up the bg & item
  image(backgroundSky, 0, 0);
  //draw the gress
  fill(124, 204, 25);
  noStroke();
  rect(0, 145, 640, 160);
  image(backgroundSoil, 0, 160);
  image(hpLife, 10, 10);
  image(hpLife, 80, 10);
  image(hpLife, 150, 10);
  image(roleGroundhog, 280, 80);
  
  //draw the sun
  fill(255, 255, 0);
  noStroke();
  ellipse(590, 50, 130, 130);
  fill(253, 184, 19);
  noStroke();
  ellipse(590, 50, 120, 120);
  
  //soldier run from lest to right
  image(anmySoldier, x1-80, y1);
  //x1 = floor(random(640));
  x1%=720;
  x1+=4;
  
  //robot
  image(anmyRobot, x2, y2);
  
  //draw the laser
  fill(255,0,0);
  noStroke();
  rect(x3, y3, 40, 10, 100);
  x3-=2;
  if (x3 < (x2-160)){
    x3 = x2+25;
  }
  
  //put the robot upper
  image(anmyRobot, x2, y2);
}
