int S;//size of Sun
int R;
int r;
int D;
float M; //size of Mercury
float V; //size of Venus
float E; //size of Earth
float m; //size of Mars
float J; //size of Jupiter
float s; //size of Saturn
float U; //size of Uranus
float N; //size of Neptune
float P; //size of Pluto

PFont f;

Button bt1,bt2,bt3,bt4,bt5,bt6,bt7,bt8,bt9,bt10;

void setup()
{
  //size(1000,1000);
  fullScreen();
  background(0);
  smooth();
  frameRate(60);
  ellipseMode(RADIUS);
  //Sun size
  S=80;
  
  D=30;
  R=10;
  r=30;
  
  f = createFont("Arial",10,true);
}

float buttonWidth=100;
float buttonHeight=50;
boolean sun = false;
boolean mercury = false;
boolean venus = false;
boolean earth = false;
boolean mars = false;
boolean jupiter = false;
boolean saturn = false;
boolean uranus = false;
boolean neptune = false;
boolean pluto = false;

void draw()
{
  if(sun == false && mercury == false && venus == false && earth == false && mars == false && jupiter == false && saturn == false && uranus == false && neptune == false && pluto == false)
  {
    //refresh background everytime
    background(0);
    
    //other planets size
    M=M+1.6;
    V=V+1.2;
    E=E+1.0;
    m=m+0.8;
    J=J+0.4;
    s=s+0.3;
    U=U+0.22;
    N=N+0.18;
    P=P+0.16;
    
    //Stars
    for(int i=0;i<20;i+=1)
    {
      stroke(255);
      strokeWeight(random(0,4));
      point(random(width),random(height));
    }
    
    noFill();
    stroke(200);
    strokeWeight(0);
    ellipse(width/2,height/2,D+2*r,D+2*r);
    ellipse(width/2,height/2,D+3*r,D+3*r);
    ellipse(width/2,height/2,D+4*r,D+4*r);
    ellipse(width/2,height/2,D+6*r,D+6*r);
    ellipse(width/2,height/2,D+10*r,D+10*r);
    ellipse(width/2,height/2,D+12*r,D+12*r);
    ellipse(width/2,height/2,D+14*r,D+14*r);
    ellipse(width/2,height/2,D+16*r,D+16*r);
    ellipse(width/2,height/2,D+18*r,D+15*r);
    
    noStroke();
    fill(255,255,0);
    ellipse(width/2, height/2,S,S);
    fill(255,100,0);
    ellipse(width/2+(D+2*r)*cos(M/180.0*PI),height/2+(D+2*r)*sin(M/180.0*PI),R,R);
    fill(255,200,0);
    ellipse(width/2+(D+3*r)*cos(V/180.0*PI),height/2+(D+3*r)*sin(V/180.0*PI),3*R,3*R);
    fill(0,0,200);
    ellipse(width/2+(D+4*r)*cos(E/180.0*PI),height/2+(D+4*r)*sin(E/180.0*PI),3*R,3*R);
    fill(200,0,0);
    ellipse(width/2+(D+6*r)*cos(m/180.0*PI),height/2+(D+6*r)*sin(m/180.0*PI),2*R,2*R);
    fill(0,250,0);
    ellipse(width/2+(D+10*r)*cos(J/180.0*PI),height/2+(D+10*r)*sin(J/180.0*PI),6*R,6*R);
    fill(200,240,0);
    ellipse(width/2+(D+12*r)*cos(s/180.0*PI),height/2+(D+12*r)*sin(s/180.0*PI),5*R,5*R);
    fill(0,100,200);
    ellipse(width/2+(D+14*r)*cos(U/180.0*PI),height/2+(D+14*r)*sin(U/180.0*PI),4*R,4*R);
    fill(0,200,200);
    ellipse(width/2+(D+16*r)*cos(N/180.0*PI),height/2+(D+16*r)*sin(N/180.0*PI),4*R,4*R);
    fill(200,200,200);
    ellipse(width/2+(D+18*r)*cos(P/180.0*PI),height/2+(D+15*r)*sin(P/180.0*PI),0.5*R,0.5*R);   
    
    fill(255,255,0);
    bt1 = new Button(100,100,buttonWidth,buttonHeight);
    bt1.display();
    bt2 = new Button(100,200,buttonWidth,buttonHeight);
    bt2.display();
    bt3 = new Button(100,300,buttonWidth,buttonHeight);
    bt3.display();
    bt4 = new Button(100,400,buttonWidth,buttonHeight);
    bt4.display();
    bt5 = new Button(100,500,buttonWidth,buttonHeight);
    bt5.display();
    bt6 = new Button(100,600,buttonWidth,buttonHeight);
    bt6.display();
    bt7 = new Button(100,700,buttonWidth,buttonHeight);
    bt7.display();
    bt8 = new Button(100,800,buttonWidth,buttonHeight);
    bt8.display();
    bt9 = new Button(100,900,buttonWidth,buttonHeight);
    bt9.display();
    bt10 = new Button(100,1000,buttonWidth,buttonHeight);
    bt10.display();
    
    textFont(f,25);
    fill(0);
    text("Sun",100,130);
    
    textFont(f,25);
    fill(0);
    text("Mercury",100,230);
    
    textFont(f,25);
    fill(0);
    text("Venus",100,330);
    
    textFont(f,25);
    fill(0);
    text("Earth",100,430);
    
    textFont(f,25);
    fill(0);
    text("Mars",100,530);
   
    textFont(f,25);
    fill(0);
    text("Jupiter",100,630);
    
    textFont(f,25);
    fill(0);
    text("Saturn",100,730);
    
    textFont(f,25);
    fill(0);
    text("Uranus",100,830);
    
    textFont(f,25);
    fill(0);
    text("Neptune",100,930);
    
    textFont(f,25);
    fill(0);
    text("Pluto",100,1030);
    
    textFont(f,50);
    fill(255);
    text("Star Map",1500,100);
  }
  else if (sun == true)
  {
    background(0);
    textFont(f,100);
    fill(255);
    text("Sun",100,200);
    
    fill(255,255,0);
    ellipse(width/2, height/2,S,S);
  }
  else if (mercury == true)
  {
    background(0);
    textFont(f,100);
    fill(255);
    text("Mercury",100,200);
    
    noFill();
    stroke(200);
    strokeWeight(0);
    ellipse(width/2,height/2,D+2*r,D+2*r);
    fill(255,100,0);
    ellipse(width/2+(D+2*r)*cos(M/180.0*PI),height/2+(D+2*r)*sin(M/180.0*PI),R,R);
  }
  else if (venus == true)
  {
    background(0);
    textFont(f,100);
    fill(255);
    text("Venus",100,200);
    
    noFill();
    stroke(200);
    strokeWeight(0);
    ellipse(width/2,height/2,D+3*r,D+3*r);
    fill(255,200,0);
    ellipse(width/2+(D+3*r)*cos(M/180.0*PI),height/2+(D+3*r)*sin(M/180.0*PI),3*R,3*R);
  }
  else if (earth == true)
  {
    background(0);
    textFont(f,100);
    fill(255);
    text("Earth",100,200);
    
    noFill();
    stroke(200);
    strokeWeight(0);
    ellipse(width/2,height/2,D+4*r,D+4*r);
    fill(0,0,200);
    ellipse(width/2+(D+4*r)*cos(E/180.0*PI),height/2+(D+4*r)*sin(E/180.0*PI),3*R,3*R);
  }
  else if (mars == true)
  {
    background(0);
    textFont(f,100);
    fill(255);
    text("Mars",100,200);
    
    noFill();
    stroke(200);
    strokeWeight(0);
    ellipse(width/2,height/2,D+6*r,D+6*r);
    fill(200,0,0);
    ellipse(width/2+(D+6*r)*cos(m/180.0*PI),height/2+(D+6*r)*sin(m/180.0*PI),2*R,2*R);
  }
  else if (jupiter == true)
  {
    background(0);
    textFont(f,100);
    fill(255);
    text("Jupiter",100,200);
    
    noFill();
    stroke(200);
    strokeWeight(0);
    ellipse(width/2,height/2,D+10*r,D+10*r);
    fill(0,250,0);
    ellipse(width/2+(D+10*r)*cos(J/180.0*PI),height/2+(D+10*r)*sin(J/180.0*PI),6*R,6*R);
  }
  else if (saturn == true)
  {
    background(0);
    textFont(f,100);
    fill(255);
    text("Saturn",100,200);
    
    noFill();
    stroke(200);
    strokeWeight(0);
    ellipse(width/2,height/2,D+12*r,D+12*r);
    fill(200,240,0);
    ellipse(width/2+(D+12*r)*cos(s/180.0*PI),height/2+(D+12*r)*sin(s/180.0*PI),5*R,5*R);
  }
  else if (uranus == true)
  {
    background(0);
    textFont(f,100);
    fill(255);
    text("Uranus",100,200);
    
    noFill();
    stroke(200);
    strokeWeight(0);
    ellipse(width/2,height/2,D+14*r,D+14*r);
    fill(0,100,200);
    ellipse(width/2+(D+14*r)*cos(U/180.0*PI),height/2+(D+14*r)*sin(U/180.0*PI),4*R,4*R);
  }
  else if (neptune == true)
  {
    background(0);
    textFont(f,100);
    fill(255);
    text("Neptune",100,200);
    
    noFill();
    stroke(200);
    strokeWeight(0);
    ellipse(width/2,height/2,D+16*r,D+16*r);
    fill(0,200,200);
    ellipse(width/2+(D+16*r)*cos(N/180.0*PI),height/2+(D+16*r)*sin(N/180.0*PI),4*R,4*R);
  }
  else if (pluto == true)
  {
    background(0);
    textFont(f,100);
    fill(255);
    text("Pluto",100,200);
    
    noFill();
    stroke(200);
    strokeWeight(0);
    ellipse(width/2,height/2,D+18*r,D+15*r);
    fill(200,200,200);
    ellipse(width/2+(D+18*r)*cos(P/180.0*PI),height/2+(D+15*r)*sin(P/180.0*PI),0.5*R,0.5*R); 
  }
}

void mousePressed()
{
  float buttonx = 100;
  float buttony1 = 100;
  float buttony2 = 200;
  float buttony3 = 300;
  float buttony4 = 400;
  float buttony5 = 500;
  float buttony6 = 600;
  float buttony7 = 700;
  float buttony8 = 800;
  float buttony9 = 900;
  float buttony10 = 1000;
  
  if (mouseX > buttonx && mouseX < buttonx + buttonWidth && mouseY > buttony1 && mouseY < buttony1 + buttonHeight)
    {
      sun = true;
    }
  else if (mouseX > buttonx && mouseX < buttonx + buttonWidth && mouseY > buttony2 && mouseY < buttony2 + buttonHeight)
    {
      mercury = true;
    }
  else if (mouseX > buttonx && mouseX < buttonx + buttonWidth && mouseY > buttony3 && mouseY < buttony3 + buttonHeight)
    {
      venus = true;
    }
  else if (mouseX > buttonx && mouseX < buttonx + buttonWidth && mouseY > buttony4 && mouseY < buttony4 + buttonHeight)
    {
      earth = true;
    }
  else if (mouseX > buttonx && mouseX < buttonx + buttonWidth && mouseY > buttony5 && mouseY < buttony5 + buttonHeight)
    {
      mars = true;
    }
  else if (mouseX > buttonx && mouseX < buttonx + buttonWidth && mouseY > buttony6 && mouseY < buttony6 + buttonHeight)
    {
      jupiter = true;
    }
  else if (mouseX > buttonx && mouseX < buttonx + buttonWidth && mouseY > buttony7 && mouseY < buttony7 + buttonHeight)
    {
      saturn = true;
    }
  else if (mouseX > buttonx && mouseX < buttonx + buttonWidth && mouseY > buttony8 && mouseY < buttony8 + buttonHeight)
    {
      uranus = true;
    }
  else if (mouseX > buttonx && mouseX < buttonx + buttonWidth && mouseY > buttony9 && mouseY < buttony9 + buttonHeight)
    {
      neptune = true;
    }
  else if (mouseX > buttonx && mouseX < buttonx + buttonWidth && mouseY > buttony10 && mouseY < buttony10 + buttonHeight)
    {
      pluto = true;
    }
}

void mouseReleased()
{
  sun = false;
  mercury = false;
  venus = false;
  earth = false;
  mars = false;
  jupiter = false;
  saturn = false;
  uranus = false;
  neptune = false;
  pluto = false;
}