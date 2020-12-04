//your variable declarations her
Spaceship spaceship;
Star[] stars;
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
public void setup() 
{
  size(800,800);
  spaceship= new Spaceship();
  stars = new Star[1000];
  for (int i=0; i<stars.length;i++) {
    stars[i]=new Star();
    oneAsteroid= new Asteroid();
  }
  for(int i = 0; i < 35; i++){
      asteroids.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  
 for (int i=0; i<stars.length;i++) {
    stars[i].show();
 }
 for(int i = 0; i < asteroids.size(); i++) {
   if (dist(asteroids.get(i).getX(), asteroids.get(i).getY(), spaceship.getX(), spaceship.getY()) < 10) {
     asteroids.remove(i);
     break;
   }
 }
   
   for(int i = 0; i < asteroids.size(); i++){ 
      asteroids.get(i).show();
      asteroids.get(i).move();
   }
   for(int i = 0; i < asteroids.size(); i++){ 
      asteroids.get(i).show();
      asteroids.get(i).move();
   }
spaceship.show();
spaceship.move();
oneAsteroid.show();
oneAsteroid.move();
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

Asteroid oneAsteroid;
