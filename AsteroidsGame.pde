//your variable declarations her
Spaceship spaceship;
Star[] stars;
public void setup() 
{
  size(800,800);
  spaceship= new Spaceship();
  stars = new Star[1000];
  for (int i=0; i<stars.length;i++) {
    stars[i]=new Star();
  }
  //your code here
}
public void draw() 
{
  background(0);
  
 for (int i=0; i<stars.length;i++) {
    stars[i].show();
 }
spaceship.show();
spaceship.move();
}

public void keyPressed(){
  if (key=='w'){
    spaceship.hyperSpace();
  }
  else if (key=='d'){
    spaceship.turn(15);
  }
    else if (key=='a'){
    spaceship.turn(-15);
  }
    else if (key=='s'){
    spaceship.accelerate(3);
  }
}
