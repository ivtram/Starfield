 Particle[] parts = new Particle[200];
void setup()
{
  size(600, 600);//your code here
  parts = new Particle[1000];
  
  for (int i = 0; i < parts.length; i++)
  {
    parts[i] = new Particle();
    parts[0] = new OddballParticle();
  }

}
  void draw()
  {
    background(0);
    for (int i = 0; i < parts.length; i++)
    {
       parts[i].move();
       parts[i].show();
    }
  }

  class Particle
  {
    double myX, myY, mySpeed, myAngle, mySize;
    int myColor;
    Particle() {
      myX = 300;
      myY = 300;
      mySize = Math.random()*8;
      mySpeed = (Math.random() *Math.PI);
      myAngle = Math.random()*11;
      myColor = (int)(Math.random()*255);
    }
    void move()
    {
      myX = myX + Math.cos(myAngle)*mySpeed;
      myY = myY + Math.sin(myAngle)*mySpeed;
    }
    void show()
    {
      fill(myColor);
      ellipse((float)myX, (float)myY, (float)mySize, (float)mySize);
    }
    void reset()
    {
      myX = 300;
      myY = 300;
    }
  }
  void mousePressed()
  {
    background(0);
    for (int i = 0; i < parts.length; i++)
    {
      parts[i].reset();
    }
  }

  class OddballParticle extends Particle //inherits from Particle
  {
    OddballParticle () 
    {
      myX = 300;
      myY = 300;
    }
    void move()
    {
      myX = myX + (int)(Math.random()*5)-2;
      myY = myY + (int)(Math.random()*5)-2;
    }
    void show()
    {
      fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
      rect((float)myX,(float)myY,20,20);
    }
    
  }

