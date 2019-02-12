private double fractionLength = .8; 
private int smallestBranch = 13; 
private double branchAngle = .7;  
public void setup() 
{   
  size(600, 600);    
  noLoop();
} 
public void draw() 
{   
  background(25,25,112);   
  stroke(220,20,60);   

  drawBranches(300, 300, 130, 3*Math.PI/2);
  drawBranches(300, 300, 130, 2*Math.PI/2); 
  drawBranches(300, 300, 130, 5*Math.PI/2);
  drawBranches(300, 300, 130, 4*Math.PI/2); //will add later
} 
public void drawBranches(int x, int y, double branchLength, double angle) 
{   
  double angle1 = angle+ branchAngle;
  double angle2 = angle - branchAngle;
  branchLength = branchLength*fractionLength;
  int endX1, endY1, endX2, endY2;
  endX1 = (int)(branchLength*Math.cos(angle1) + x);
  endY1 = (int)(branchLength*Math.sin(angle1) + y);
  endX2 = (int)(branchLength*Math.cos(angle2) + x);
  endY2 = (int)(branchLength*Math.sin(angle2) + y);
  line(x, y, endX1, endY1);
  line(x, y, endX2, endY2);
  if (branchLength> smallestBranch) {
    drawBranches(endX1, endY1, branchLength, angle1);
    drawBranches(endX2, endY2, branchLength, angle2);
  }
} 
