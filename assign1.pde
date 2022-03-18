
PImage sky;
PImage soil;
PImage life;
PImage groundhog;
PImage robot; 
PImage soldier;


int piece = 80;
int robotX = floor(random(160,560));
int robotY = piece*2 + floor(random(4))*piece;
int soldierX;
int soldierY = piece*2 + floor(random(4))*piece;
int laserSpeedX = robotX + 25;
int laserX;
int laserY = robotY + 37;



void setup() {
	
  size(640, 480, P2D);
  
  sky = loadImage("img/bg.jpg"); 
  soil = loadImage("img/soil.png"); 
  life = loadImage("img/life.png"); 
  groundhog = loadImage("img/groundhog.png"); 
  robot = loadImage("img/robot.png"); 
  soldier = loadImage("img/soldier.png");
  
}

void draw() {
  
  image(sky, 0, 0);
  image(soil, 0, piece*2); //set up the bg 
  
  noStroke();
  fill(124, 204, 25);
  rect(0, 145, 640, 15);  //draw the gress
  

  image(life, 10, 10);
  image(life, 80, 10);
  image(life, 150, 10); //default life *3
  
  image(groundhog, 280, 80); 
  
  fill(255, 255, 0);
  noStroke();
  ellipse(590, 50, 130, 130);
  fill(253, 184, 19);
  noStroke();
  ellipse(590, 50, 120, 120); //draw the sun
  
  soldierX += 2;
  if(soldierX > width){
    soldierX =- piece;
  }
  
  image(soldier, soldierX, soldierY); //soldier
  
 
  image(robot, robotX, robotY); //robot
  
  
  laserSpeedX -= 2;
  laserX += 2;
  
  fill(255,0,0);
  ellipse(laserSpeedX,laserY,10,10);
  ellipse(laserSpeedX+laserX,laserY,10,10);
  rect(laserSpeedX,laserY-5,laserX,10);
  
  if(laserX >= 30){
    laserX = 30;
  }
  
  if(laserSpeedX < robotX - 2*piece){
    laserSpeedX = robotX + 25;
    laserX = 0;
  }
}
