//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}

//🎯Variable Declarations Go Here
var leftx= 200;
var rightx= 250;
var cloudx= 250;


//🟢Draw Procedure - Runs on Repeat
draw = function(){

 //shapes and colors go here
  background(184,236,255,0);
  
  // clouds
  fill(255,255,255);
  
  //left cloud
  ellipse(leftx,150,126,97);
  ellipse(leftx+62,150,70,60);
  ellipse(leftx-62,150,70,60);
  
  //right cloud
  ellipse(rightx,100,126,97);
  ellipse(rightx+62,100,70,60);
  ellipse(rightx-62,100,70,60);
  
   leftx +=4;
    rightx -=2;
    
  
  
   if(mousePressed){
    showXYPositions();
    
  }
  
  //🎯Animation Code Goes Here
  rect(cloudx, 15, 10, 10);
  
  cloudx = cloudx + 1;

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

//right cloud
ellipse(rightx,100,126,97);
ellipse (rightx +62,100,70,60);
ellipse(rightx -62,100,70,60);

leftx +=2;
leftx -=2;

if(leftx>600){
leftx = 200;
rightx=250;
}

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
    
   
}
