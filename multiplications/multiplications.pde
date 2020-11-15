// This program will show the Unit circle. It divides the cicle with n points equally reparted.
// Each point has an index between 0 and n-1. 
// For each k in [0 , modulus], we connect the (k-th [modulus]) index with the ( (n x k)-th [modulus]) one


// Screen parameters
int sceenWidt = 1000;
int offset = 50;

// Modulus and multiplication table
float n = 2;  // multiplication drawn (increased each frame)
int modulus = 497;



void setup(){
  size(1000,1000);
  background(20);
  
  // We draw a circle
  noFill();
  stroke(220);
  ellipse(sceenWidt/2,sceenWidt/2 , sceenWidt - 2*offset , sceenWidt - 2*offset);
  
  // And the multiplication lines
  multiplication();
}



void draw(){
  n += 0.02; // Comment to have a fixed image of one multiplication table
  background(20);
  
  // We draw a circle
  noFill();
  stroke(220);
  ellipse(sceenWidt/2,sceenWidt/2 , sceenWidt - 2*offset , sceenWidt - 2*offset);
  
  // And the multiplication lines
  multiplication(); 
}



void multiplication(){
  for (int i = 0 ; i<modulus ; i++){
    drawMultiplication(i);
  }
}



void drawMultiplication(int j){
  
  float jAngle = j* 2 * PI / modulus ; // j-th point
  float nTimesjAngle = n* j* 2 * PI / modulus ; // (j x n)-th point

  stroke(  cos((float) (1*j*n / (float)modulus) )*100 + 155 % 255,
           cos((float) (3*j*n / (float)modulus) )*100 + 155 % 255,
           cos((float) (5*j*n / (float)modulus) )*100 + 155 % 255); // variable colour
           
  line( sceenWidt/2 + (sceenWidt/2 - offset) * cos(jAngle),
        sceenWidt/2  + (sceenWidt/2 - offset) * sin(jAngle),
        sceenWidt/2 + (sceenWidt/2 - offset) * cos(nTimesjAngle),
        sceenWidt/2  + (sceenWidt/2 - offset) * sin(nTimesjAngle)); // We connect the two points 
}
