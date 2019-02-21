private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .3;  
public void setup() 
{   
	size(950,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	for (int i=0;i<1000; i+=100){ 
	stroke(i/2,i/4,i/10);   
	line(i,480,i,380);  
	drawBranches(i,380,100, 3*Math.PI/2);
}
	} 
public void mousePressed() {
	redraw();
}
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double lol = Math.random()*2;
	double angle1 = angle + branchAngle*lol;
	double angle2 = angle - branchAngle*lol;
	branchLength*=fractionLength;
	int endX1 = (int)(branchLength*Math.cos(angle1) + x);
	int endY1 = (int)(branchLength*Math.sin(angle1) + y);
	int endX2 = (int)(branchLength*Math.cos(angle2) + x);
	int endY2 = (int)(branchLength*Math.sin(angle2) + y);
	
	
	if(branchLength>5){
	line(x, y, endX1, endY1);
	line(x, y, endX2, endY2);
	drawBranches(endX1, endY1, branchLength/1.1,angle1);
	drawBranches(endX2, endY2, branchLength/1.1,angle2);
	}
		 
}