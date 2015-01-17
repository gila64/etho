

import controlP5.*;




import processing.video.*;
//Table table;
int increment=0;
int counteight=1;
Movie mov;
int newFrame = 0;
PrintWriter output;
//int currentFrame;
String gL;
String noF;
String [] behavs;
String [] frames;
int frate;
int movFrameRate;
int i;
int linepos=20;
ControlP5 jControl;
float jumpTo=3;

void setup() {

  size(900, 360);
  jControl = new ControlP5(this);
Slider s = jControl.addSlider("jumpTo", 0, 100, 5, 10,10, 150, 50);

  output = createWriter("behaviours.txt");  
background(10);
  behavs = new String[36];
  behavs = loadStrings("assign.txt");
  println(behavs);

  frames = new String[1];
  frames = loadStrings("frames.txt");
  int frate = int(frames[0]);
  movFrameRate = frate;

  println(frate);

  // Load and set the video to play. Setting the video 
  // in play mode is needed so at least one frame is read
  // and we can get duration, size and other information from
  // the video stream. 
  mov = new Movie(this, "sample.mov");

  // Pausing the video at the first frame. 
  mov.play();
  mov.jump(0);
  mov.pause();
}

void movieEvent(Movie m) {
  m.read();
}


void draw() {
  //background(0);
  image(mov, 0, 0, 640, 360);
  String noF = str(getFrame());      

}



void keyPressed() {
 
if (key != CODED) 
{
          if (linepos> 300) {background(10); linepos = 20;}

    increment++;
     counteight++;
     linepos=linepos+20;

          }
  
  
 if (key == CODED) {
    if (keyCode == LEFT) {
      if (0 < newFrame) newFrame--;
    } else if (keyCode == RIGHT) {
      if (newFrame < getLength() - 1) newFrame++;
    }
  } else if (key == 'a') {
    println((behavs[0]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[0]);
    towrite[1] = getFrame() + "," + (getLength() - 1+"," + increment);

    output.println(join(towrite, ","));

    text(join(towrite, ","), 645, linepos);
  } else if (key == 'b') {
    println((behavs[1]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[1]);
    towrite[1] = getFrame() + "," + (getLength() - 1+"," + increment);
    output.println(join(towrite, ","));
    text(join(towrite, ","), 645, linepos);
  } else if (key == 'c') {
    println((behavs[2]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[2]);
    towrite[1] = getFrame() + "," + (getLength() - 1+"," + increment);
    output.println(join(towrite, ","));
    text(join(towrite,","), 645, linepos);
  } else if (key == 'd') {
    println((behavs[3]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[3]);
    towrite[1] = getFrame() + "," + (getLength() - 1+"," + increment);
    output.println(join(towrite, ","));
  } else if (key == 'e') {
    println((behavs[4]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[4]);
    towrite[1] = getFrame() + "," + (getLength() - 1+"," + increment);
    output.println(join(towrite, ","));
  } else if (key == 'f') {
    println((behavs[5]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[5]);
    towrite[1] = getFrame() + "," + (getLength() - 1+"," + increment);
    output.println(join(towrite, ","));
  } else if (key == 'g') {
    println((behavs[6]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[6]);
    towrite[1] = getFrame() + "," + (getLength() - 1+"," + increment);
    output.println(join(towrite, ","));
  } else if (key == 'h') {
    println((behavs[7]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[7]);
    towrite[1] = getFrame() + "," + (getLength() - 1+"," + increment);
    output.println(join(towrite, ","));
  } else if (key == 'i') {
    println((behavs[8]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[8]);
    towrite[1] = getFrame() + "," + (getLength() - 1+"," + increment);
    output.println(join(towrite, ","));
  } else if (key == 'j') {
    println((behavs[9]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[9]);
    towrite[1] = getFrame() + "," + (getLength() - 1+"," + increment);
    output.println(join(towrite, ","));
  } else if (key == 'k') {
    println((behavs[10]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[10]);
    towrite[1] = getFrame() + "," + (getLength() - 1+"," + increment);
    output.println(join(towrite, ","));
  } else if (key == 'l') {
    println((behavs[11]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[11]);
    towrite[1] = getFrame() + "," + (getLength() - 1+"," + increment);
    output.println(join(towrite, ","));
  } else if (key == 'm') {
    println((behavs[12]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[12]);
    towrite[1] = getFrame() + "," + (getLength() - 1+"," + increment);
    output.println(join(towrite, ","));
  } else if (key == 'n') {
    println((behavs[13]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[13]);
    towrite[1] = getFrame() + "," + (getLength() - 1+"," + increment);
    output.println(join(towrite, ","));
  } else if (key == 'o') {
    println((behavs[14]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[14]);
    towrite[1] = getFrame() + "," + (getLength() - 1+"," + increment);
    output.println(join(towrite, ","));
  } else if (key == 'p') {
    println((behavs[15]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[15]);
    towrite[1] = getFrame() + "," + (getLength() - 1+"," + increment);
    output.println(join(towrite, ","));
  } else if (key == 'q') {
    println((behavs[16]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[16]);
    towrite[1] = getFrame() + "," + (getLength() - 1+"," + increment);
    output.println(join(towrite, ","));
  } else if (key == 'r') {
    println((behavs[17]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[17]);
    towrite[1] = getFrame() + "," + (getLength() - 1+"," + increment);
    output.println(join(towrite, ","));
  } else if (key == 's') {
    println((behavs[18]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[18]);
    towrite[1] = getFrame() + "," + (getLength() - 1+"," + increment);
    output.println(join(towrite, ","));
  } else if (key == 't') {
    println((behavs[19]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[19]);
    towrite[1] = getFrame() + "," + (getLength() - 1+"," + increment);
    output.println(join(towrite, ","));
  } else if (key == 'u') {
    println((behavs[20]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] =(behavs[20]);
    towrite[1] = getFrame() + "," + (getLength() - 1+"," + increment);
    output.println(join(towrite, ","));
  } else if (key == 'v') {
    println((behavs[21]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[21]);
    towrite[1] = getFrame() + "," + (getLength() - 1+"," + increment);
    output.println(join(towrite, ","));
  } else if (key == 'w') {
    println((behavs[22]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[22]);
    towrite[1] = getFrame() + "," + (getLength() - 1+"," + increment);
    output.println(join(towrite, ","));
  
  } else if (key == 'y') {
    println((behavs[24]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[24]);
    towrite[1] = getFrame() + "," + (getLength() - 1+"," + increment);
    output.println(join(towrite, ","));
  } else if (key == 'z') {
    println((behavs[25]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[25]);
    towrite[1] = getFrame() + "," + (getLength() - 1 + increment);
    output.println(join(towrite, ","));
  } else if (key == '0') {
    println((behavs[26]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[26]);
    towrite[1] = getFrame() + "," + (getLength() - 1);
    output.println(join(towrite, ","));
  } else if (key == '1') {
    println((behavs[27]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[27]);
    towrite[1] = getFrame() + "," + (getLength() - 1);
    output.println(join(towrite, ","));
  } else if (key == '2') {
    println((behavs[28]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[228]);
    towrite[1] = getFrame() + "," + (getLength() - 1);
    output.println(join(towrite, ","));
  } else if (key == '3') {
    println((behavs[29]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[29]);
    towrite[1] = getFrame() + "," + (getLength() - 1);
    output.println(join(towrite, ","));
  } else if (key == '4') {
    println((behavs[30]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[30]);
    towrite[1] = getFrame() + "," + (getLength() - 1);
    output.println(join(towrite, ","));
  } else if (key == '5') {
    println((behavs[31]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[31]);
    towrite[1] = getFrame() + "," + (getLength() - 1);
    output.println(join(towrite, ","));
  } else if (key == '6') {
    println((behavs[32]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[32]);
    towrite[1] = getFrame() + "," + (getLength() - 1);
    output.println(join(towrite, ","));
  } else if (key == '7') {
    println((behavs[33]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[33]);
    towrite[1] = getFrame() + "," + (getLength() - 1);
    output.println(join(towrite, ","));
  } else if (key == '8') {
    println((behavs[34]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[34]);
    towrite[1] = getFrame() + "," + (getLength() - 1);
    output.println(join(towrite, ","));
  } else if (key == '9') {
    println((behavs[35]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[35]);
    towrite[1] = getFrame() + "," + (getLength() - 1);
    output.println(join(towrite, ","));
    
    } else if (key == 'x') {
    println((behavs[23]), getFrame() + "," + (getLength() - 1)+"," + increment);
    String[] towrite = new String[2];
    towrite[0] = (behavs[23]);
    towrite[1] = getFrame() + "," + (getLength() - 1)+","+increment;
    output.println(join(towrite, ","));
    endRecord();
  } 
    setFrame(newFrame);
}

int getFrame() {    
  return ceil(mov.time() * movFrameRate) - 1;

  //  currentFrame=getFrame();
}

void setFrame(int n) {
  mov.play();

  // The duration of a single frame:
  float frameDuration = 1.0 / movFrameRate;

  // We move to the middle of the frame by adding 0.5:
  float where = (n + 0.5) * frameDuration; 

  // Taking into account border effects:
  float diff = mov.duration() - where;
  if (diff < 0) 
  {
    where += diff - 0.25 * frameDuration;
  }

  mov.jump(where);
  mov.pause();
}  

int getLength() {
  return int(mov.duration() * movFrameRate);
}

void endRecord() {

  output.flush();  // Writes the remaining data to the file
  output.close();  // Finishes the file
  exit();  // Stops the program
}

