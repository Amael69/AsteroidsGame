class Bullet extends Floater{
  private int countDown;
  public Bullet(Spaceship spaceship){
    myCenterX = spaceship.getX();
    myCenterY = spaceship.getY();
    myXspeed = spaceship.getMyXspeed();
    myYspeed = spaceship.getMyYspeed();
    myPointDirection = spaceship.getMyDirection();
    myColor= color(1,200,210); 
    accelerate(6);
    countDown=100;
  }
  public void show(){
    fill (myColor);
    stroke (232,100,0);
    ellipse((float)myCenterX,(float)myCenterY, 10.0,10.0);
    if (countDown > 0) {countDown --;}
  }
  public int getCountDown () {
    return countDown;
  }
  
  public float getMyX () {
    return (float) myCenterX;
  } 
  public float getMyY () {
    return (float) myCenterY;
  } 
} 
