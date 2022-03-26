//Lock by Kevin Huang - It's a puzzle, the instructions are there. I'm not going to backseating a puzzle.
//Early stages of the puzzle(I plan to see if I can incorporate more things I learn from class into this)
PFont Font;
PFont Symbol;
PImage Back;
int Lock = 0;
int RLock = 0;
int GLock = 0;
int BLock = 0;
int Backside = 0;
boolean Win = false;

void setup(){
  size(1200,1200);
  background(255);
  Font = createFont("Times New Roman", 16, true);
  Symbol = createFont("Georgia", 16, true);
  Back = loadImage("Flip.png");
  fill(0);
  textFont(Font, 32);
  text("Click to interact", 500, 50);
}

void draw(){
  fill(155);
  rect(100, 100, 1000, 1000);
  image(Back, 0, 0, width/12, height/12);
  if(Lock == 0 && Backside == 0){
    fill(0);
    strokeWeight(2);
    for(int i = 100; i < 1100; i+=20){
      line(100, i, 1100, i);
    }
    fill(255);
    strokeWeight(10);
    rect(400,100,450,100);
    fill(0);
    textFont(Font, 32);
    text("Interactable buttons are in certain", 410, 150);
    text("color shapes and images", 480, 175);
  }else if(Lock == 1 && Backside == 0){
    fill(255,0,0);
    rect(200,200,200,800);
    
    fill(0,255,0);
    rect(500,200,200,800);
    
    fill(0,0,255);
    rect(800,200,200,800);
  }else if(RLock == 1 && Backside == 0){
    fill(255);
    rect(400,100,450,100);
    
    fill(255,0,0);
    rect(200,200,200,800);
  }else if (GLock == 1 && Backside == 0){
    fill(255);
    rect(400,100,450,100);
    
    fill(0,255,0);
    rect(500,200,200,800);
  }else if(BLock == 1 && Backside == 0){
    fill(255);
    rect(400,100,450,100);
    
    fill(0,0,255);
    rect(800,200,200,800);
  }
  if(Backside == 1){
    fill(155);
    rect(100, 100, 1000, 1000);
    fill(0);
    text("I = 1", 950, 150);
    text("V = 5", 950, 190);
    text("X = 10", 950, 230);
    text("L = 50", 950, 270);
    textFont(Symbol, 40);
    fill(255, 0, 0);
    text("XVIII", 140, 140);//18
    text("%#%@", 700,330);
    fill(0, 255 ,0);
    text("XLVII", 950, 1050);//49
    text("&#%!@", 592,783);
    fill(0, 0, 255);
    text("XXIV", 400, 220);//24
    text("!#%@!",300,600);
    fill(255);
    text("7223", 620, 720);
    text("9921",540,221);
    text("3427",800, 920);
    fill(0);
    text("2461", 300, 800);
    text("1337", 450, 900);
    text("6420",500, 500);
  }
}

void mousePressed(){
  
  
  if(Lock == 0 && mouseX >= 400 && mouseX <= 850 && mouseY >= 100 && mouseY <= 200 && Backside == 0){
    fill(155);
    Lock++;
  }
  if(Lock == 1 && mouseX >= 200 && mouseX <= 400 && mouseY >= 200 && mouseY <= 1000 && Backside == 0){//Red Lock
    fill(255);
    rect(400,100,450,100);
    Lock++;
    RLock++;
  }else if(Lock == 1 && mouseX >= 500 && mouseX <= 700 && mouseY >= 200 && mouseY <= 1000 && Backside == 0){//Green Lock
    Lock++;
    GLock++;
  }else if(Lock == 1 && mouseX >= 800 && mouseX <= 1000 && mouseY >= 200 && mouseY <= 1000 && Backside == 0){//Blue Lock
    
    Lock++;
    BLock++;
  }
  //See Red Lock
  if(RLock == 1 && mouseX >= 400 && mouseX <= 850 && mouseY >= 100 && mouseY <= 200 && Backside == 0){
    
    Lock--;
    RLock--;
  }else if(GLock == 1 && mouseX >= 400 && mouseX <= 850 && mouseY >= 100 && mouseY <= 200 && Backside == 0){
   
    Lock--;
    GLock--;
  }else if(BLock == 1 && mouseX >= 400 && mouseX <= 850 && mouseY >= 100 && mouseY <= 200 && Backside == 0){
   
    Lock--;
    BLock--;
  }
  
  
  if(Backside == 0 && mouseX >= 0 && mouseX <= 75 && mouseY >= 0 && mouseY <= 75){
    Backside++;
  }else if(Backside == 1 && mouseX >= 0 && mouseX <= 75 && mouseY >= 0 && mouseY <= 75){
    Backside--;
  }
}
