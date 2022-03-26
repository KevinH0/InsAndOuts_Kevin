/*Midterm progression - made a win system in an array(Press the numbers in the backside of the lock). To find out the code to win,
iscroll down to the bottom of this code and click the symbols on those orders
*/
PFont Font;
PFont Symbol;
PImage Back;
PImage Crack;
int Lock = 0;
int RLock = 0;
int GLock = 0;
int BLock = 0;
int Backside = 0;
int win = 0;
int wincount = 0;
int click = 0;
int boop = 0;
int clicktime = 5000;
int clickstop = 0;
String[] symbol = new String[4];
String[] Rightsymbol = {"XVIII", "!#%@!", "3427", "6420"};
int i;

void setup(){
  size(1200,1200);
  Font = createFont("Times New Roman", 16, true);
  Symbol = createFont("Georgia", 16, true);
  Back = loadImage("Flip.png");
  Crack = loadImage("LockCracked.png");
  fill(0);
  textFont(Font, 32);
  text("Click to interact", 500, 50);
}

void draw(){
  click = millis();
  if(click - boop >= clicktime && win == 0 && clickstop == 0){
    println(boop + ": SOUND IS TRIGGERED!!!!");
    boop = click;
    i++;
  }
  background(220);
  fill(155);
  rect(100, 100, 1000, 1000);
  image(Back, 0, 0, width/12, height/12);
  if(Lock == 0 && Backside == 0 && win == 0){
    lines();
    fill(255);
    strokeWeight(10);
    rect(400,100,450,100);
    fill(0);
    textFont(Font, 32);
    text("Interactable buttons are in certain", 410, 150);
    text("color shapes and images", 480, 175);
  }else if(Lock == 1 && Backside == 0 && win == 0){
    lines();
    fill(255,0,0);
    rect(200,200,200,800);
    
    fill(0,255,0);
    rect(500,200,200,800);
    
    fill(0,0,255);
    rect(800,200,200,800);
  }else if(RLock == 1 && Backside == 0 && win == 0){
    lines();
    fill(255);
    rect(400,100,450,100);
    
    fill(255,0,0);
    rect(200,200,200,800);
    
    fill(255);
    rect(400,200,600,800);
    fill(0);
    for(int i = 400; i < 1000; i += 32){
      line(i, 200, i, 1000);
    }
  }else if (GLock == 1 && Backside == 0 && win == 0){
    lines();
    fill(255);
    rect(400,100,450,100);
    fill(0);
    text("^%", 200, 300);
    text("!#", 200, 400);
    text("^@", 200, 500);
    text("%@", 200, 600);
    text("%#", 200, 700);
    text("&#", 400, 300);
    text("%@#", 400, 400);
    text("%@!", 400, 500);
    text("&#%", 400, 600);
    text("*@%", 400, 700);
    
    fill(0,255,0);
    rect(500,200,200,800);

    
    
  }else if(BLock == 1 && Backside == 0 && win == 0){
    lines();
    fill(255);
    rect(400,100,450,100);
    
    fill(0,0,255);
    rect(800,200,200,800);
  }
  if(Backside == 1 && win == 0){
    fill(155);
    rect(100, 100, 1000, 1000);
    lines();
    strokeWeight(10);
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
  
  for(int i = 1; i < wincount*25; i+=25){
      fill(255, 215, 0);
      line(i+25, 1125, i+25, 1150);
  }
  
  if(win == 1){
    win();
  }
  if(symbol[3] == Rightsymbol[3] && win == 0){
    win++;
  }
}

void mousePressed(){
  
  
  if(Lock == 0 && mouseX >= 400 && mouseX <= 850 && mouseY >= 100 && mouseY <= 200 && Backside == 0 && win == 0){
    fill(155);
    Lock++;
  }
  if(Lock == 1 && mouseX >= 200 && mouseX <= 400 && mouseY >= 200 && mouseY <= 1000 && Backside == 0 && win == 0){//Red Lock
    fill(255);
    rect(400,100,450,100);
    Lock++;
    RLock++;
  }else if(Lock == 1 && mouseX >= 500 && mouseX <= 700 && mouseY >= 200 && mouseY <= 1000 && Backside == 0 && win == 0){//Green Lock
    Lock++;
    GLock++;
  }else if(Lock == 1 && mouseX >= 800 && mouseX <= 1000 && mouseY >= 200 && mouseY <= 1000 && Backside == 0 && win == 0){//Blue Lock
    
    Lock++;
    BLock++;
  }
  //See Red Lock
  if(RLock == 1 && mouseX >= 400 && mouseX <= 850 && mouseY >= 100 && mouseY <= 200 && Backside == 0 && win == 0){
    
    Lock--;
    RLock--;
  }else if(GLock == 1 && mouseX >= 400 && mouseX <= 850 && mouseY >= 100 && mouseY <= 200 && Backside == 0 && win == 0){
   
    Lock--;
    GLock--;
  }else if(BLock == 1 && mouseX >= 400 && mouseX <= 850 && mouseY >= 100 && mouseY <= 200 && Backside == 0 && win == 0){
   
    Lock--;
    BLock--;
  }
  
  if(Backside == 1 && win == 0){
    if(mouseX >= 120 && mouseX <= 260 && mouseY >= 120 && mouseY <= 140){
      println("PRESSED X");
      symbol[0] = "XVIII"; 
    }else if(mouseX >= 280 && mouseX <= 430 && mouseY >= 580 && mouseY <= 620 && symbol[0] == Rightsymbol[0]){
      println("PRESSED !#%@!");
      symbol[1] = "!#%@!";
    }else if(mouseX >= 720 && mouseX <= 900 && mouseY >= 900 && mouseY <= 940 && symbol[1] == Rightsymbol[1]){
      println("PRESSED 3427");
      symbol[2] = "3427";
    }else if(mouseX >= 480 && mouseX <= 560 && mouseY >= 480 && mouseY <= 520 && symbol[2] == Rightsymbol[2]){
      println("PRESSED 6420");
      symbol[3] = "6420";
    }
  }//XVIII" 140, 140, "!#%@!" 300,600, "3427" 800, 920, 6420 500, 500
  if(Backside == 0 && mouseX >= 0 && mouseX <= 75 && mouseY >= 0 && mouseY <= 75 && win == 0){
    Backside++;
  }else if(Backside == 1 && mouseX >= 0 && mouseX <= 75 && mouseY >= 0 && mouseY <= 75 && win == 0){
    Backside--;
  }
}
  


void keyPressed(){
  if(win != 1){
    win++;
    wincount++;
  }
}

void lines(){//lines and strokeweight
    fill(0);
    strokeWeight(2);
    for(int i = 100; i < 1100; i+=20){
      line(100, i, 1100, i);
    }
    strokeWeight(10);
}

void win(){
  if(win == 1){
    fill(255, 215, 0);
    rect(0, 0, 1200, 1200);
    fill(0);
    textSize(32);
    Crack.resize(0, 400);
    image(Crack, width/3, height/6);
    text("You have beat the lock! There is no satisfying end because just because", width/6-25, height/2);
    text("You can try it again by clicking on the box", width/4+25, height/2-40);
    fill(255);
    rect(400, 700, 400, 100);
    if(mousePressed && mouseX >= 400 && mouseX <= 800 && mouseY >= 700 && mouseY <= 800 && win == 1){
      win--;
      Lock = 0;
      BLock = 0;
      RLock = 0;
      GLock = 0;
      symbol = new String[4];
    }
  }
}
//XVIII, !#%@!, 3427, 6420
