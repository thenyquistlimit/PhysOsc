package com.example.physosc;

//--------------------------------------------------- Library Imports ------------------------------------------------------------

import java.util.ArrayList;
import ketai.sensors.KetaiSensor;
import oscP5.*;
import netP5.NetAddress;
import processing.core.*;
import controlP5.*;
import android.util.Log;
import apwidgets.*;

//---------------------------------------------------- Main Activity -------------------------------------------------------------

public class ThirdActivity extends PApplet 
{   
	// Object Declarations
	OscP5 oscP5;
	KetaiSensor sensor;
	ControlP5 controlP5;	
	NetAddress remoteLocation;
	Flock flock;
	PFont p;
	String ip="192.168.1.19"; //My laptops address on the router 
	APEditText textField;
	APWidgetContainer widgetContainer;
	APButton button1;	

	// Global Variables
	int cohFactor = 8;
	int sepFactor = 12;
	int allignFactor = 7;
	int visibleBoids = 20;	
	float accelerometerX, accelerometerY, accelerometerZ;
	boolean smooth = true;
    boolean acceler = true;	
	boolean ValidIP = true;
		
	// Creating of the flock
	@SuppressWarnings("deprecation")
	public void setup() 
	{ 
	  // Screen dimensions
	  size(720, 1280);
	  
	  // Set this so the sketch won't reset as the phone is rotated:
	  orientation(LANDSCAPE);
	  
	  // Sketch Frame Rate
	  frameRate(37);
	  smooth();
	  //noStroke();
	  fill(255);
	  textSize(28);	  
	  
	  // Adding Android Core Widgets 
	  // These are not available while using the PApplet, im using apwidgets as a work around
	  widgetContainer = new APWidgetContainer(this);	  
	  textField = new APEditText(775,43,250,80);
	  button1 = new APButton(1020,43,130,80,"host");
	  widgetContainer.addWidget(textField);	  
	  widgetContainer.addWidget(button1);
	  
	  // Calling an instance of the Flock Class
	  flock = new Flock();	  	  	  
	  // Add an initial set of boids into the system 
	  for (int i = 0; i < visibleBoids; i++) 
	  {
	    flock.addBoid(new Boid(width/2,height/2, i));
	  }  
	  
	  // start oscP5:
	  oscP5 = new OscP5(this, 8000); //App listener listen on port 8000
	  // "192.168.1.19" is my laptop ip4 address'
	  // 8001 is the port number Max is listening on  
	  remoteLocation = new NetAddress(ip, 9001);	      

	  sensor = new KetaiSensor(this); // Turn on Ketai
	  sensor.enableAccelerometer(); // Initialize Accelerometer  
	  
	  // Create Control p5 GUI
	  controlP5 = new ControlP5(this);
	  // change the default font to Verdana
	  PFont p = createFont("Verdana",24);
	  controlP5.setControlFont(p); 
	  controlP5.setColorLabel(color(0));
	  
	  controlP5.setColorForeground(color(255));
	  controlP5.setColorBackground(color(0));
	  controlP5.setColorValue(color(0));
	  controlP5.setColorActive(color(224));
	  
	  
	  controlP5.addSlider("setCohFactor",0,20,cohFactor,50,height-440,50,400).setLabel("Cohesion");
	  controlP5.addSlider("setSepFactor",0,20,sepFactor,200,height-440,50,400).setLabel("Separation");
	  controlP5.addSlider("setAllignFactor",  0,20,allignFactor,350,height-440,50,400).setLabel("Alignment");
	  controlP5.addSlider("setFrameRate",  1,100,45,500,height-440,50,400).setLabel("Framerate");
	  controlP5.addToggle("toggleAcceler",true,50,155,120,50).setLabel("Send Sensor"); 
	  controlP5.addToggle("toggleSmooth",true,50,240,50,50).setLabel("Smooth"); 
	}
	
	    // Setting data from control p5 UI to global variables
	    void setFrameRate(int rate) 
	    {
	       frameRate(rate);
	    }

	    void setAllignFactor(int factor) 
	    {
		   allignFactor = factor;
		}
		 
		void setSepFactor(int factor) 
		{
		   sepFactor = factor;
		}
		 
		void setCohFactor(int factor) 
		{
		   cohFactor = factor;
		}	
		// Scale integer input into float
		float scale(int factor) 
		{
		   float scaled = (float)(factor) / 10;
		   return scaled;
		}		
			
		// On / Off Switch for Smooth Animation
		void toggleSmooth() 
		{
		   if (smooth == true) 
		   {
			    smooth = false;
			    noSmooth();
		   } 
		   else 
		   {
			    smooth = true;
			    smooth();
		   }
	    }
		
		//On / Off Switch for Accelerometer
		void toggleAcceler() 
		{
		   if (acceler == false) 
		   {
			    acceler = true;
			    sensor.start();			   
		   } 
		   else 
		   {
			    acceler = false;
			    sensor.stop();
		   }
	    }		

		// Clicking ip address Widget to store info
		public void onClickWidget(APWidget widget)
		{
		   if(widget == button1)
		   {
			    ip = textField.getText();
				remoteLocation = new NetAddress(ip, 8001);
			    ValidIP = true;				
		   }
		}
				
	    // Draw Boids to the screen
	    public void draw() 
	    {
	      background(128,128,128);			  
	      widgetContainer.show();
	      remoteLocation = new NetAddress(ip,8001);
	      flock.run();
          fill(color(0, 0, 0));	      
	      text( 
				    "X: " + nfp(accelerometerX, 1, 3) + "\n" +
				    "Y: " + nfp(accelerometerY, 1, 3) + "\n" +
				    "Z: " + nfp(accelerometerZ, 1, 3), 50, 50, width, height);
				  
				  OscMessage accelx = new OscMessage("/accelx");
				  accelx.add(accelerometerX);
				  accelx.add("AccelerometerX");
				  oscP5.send(accelx, remoteLocation);
				  
				  OscMessage accely = new OscMessage("/accely");
				  accely.add(accelerometerY);
				  accely.add("AccelerometerY");
				  oscP5.send(accely, remoteLocation);	
				  
				  OscMessage accelz = new OscMessage("/accelz");
				  accelz.add(accelerometerZ);
				  accelz.add("AccelerometerZ");
				  oscP5.send(accelz, remoteLocation);
	        }  						  
	    
		public void onAccelerometerEvent(float x, float y, float z)
		{
			  accelerometerX = x;
			  accelerometerY = y;
			  accelerometerZ = z;
		}		    

	//--------------------------------- The Boids Class created by Daniel Shiffman-----------------------------------------
	// http://processing.org/examples/flocking.html
	
	class Boid 
	{
		
	  PVector location;
	  PVector velocity;
	  PVector acceleration;
	  float r;           // Radius
	  float maxforce;    // Maximum steering force
	  float maxspeed;    // Maximum speed
	  String name = "";
	  
	  
	    Boid(float x, float y, int i) {
	    acceleration = new PVector(0, 0);
	
	    name += i;

	    velocity = PVector.random2D();

	    float angle = random(TWO_PI);
	    velocity = new PVector(cos(angle), sin(angle));

	    location = new PVector(x, y);
	    //Modified from 2 to 6
	    r = (float)10.0;
	    maxspeed = 4;
	    //Modified from 0.03 to 0.06
	    maxforce = (float)0.03;
	 }    
	    
	  //------------------------------------------------------------------------------------------------------------
		    

	public void run(ArrayList<Boid> boids) 
	  {
	    flock(boids);
	    //Adding update, borders and render methods to the flock
	    update();
	    borders();
	    render();
	    getPosition();
	  }
	
    // Return Each Single Boid Position to getLocationsAndSendThem() 
    public PVector getPosition() 
    {
      return location;
    }		
	  
	public void applyForce(PVector force) 
	  {
	    // We could add mass here if we want A = F / M
	    acceleration.add(force);
	  }

	  //------------------------ We accumulate a new acceleration each time based on three rules---------------------------------
	  
	  public void flock(ArrayList<Boid> boids) 
	  {
	    PVector sep = separate(boids);   // Separation
	    PVector ali = align(boids);      // Alignment
	    PVector coh = cohesion(boids);   // Cohesion

	    // Connecting Control p5 UI elements to the Boids algorithm parameters 
	    float multCohFactor = scale(cohFactor);
	    float multSepFactor = scale(sepFactor);
	    float multAllignFactor = scale(allignFactor);	 	     
	    coh.mult(multCohFactor);
	    sep.mult(multSepFactor);
	    ali.mult(multAllignFactor);	        
	    sep.mult((float) 1.5);
	    ali.mult((float) 1.0);
	    coh.mult((float) 1.0);
	    
	    // Add the force vectors to acceleration
	    applyForce(sep);
	    applyForce(ali);
	    applyForce(coh); 
	  }

	//-------------------------------------------- Method to update location ---------------------------------------------------
	  public void update() 
	  {
	    // Update velocity
	    velocity.add(acceleration);
	    // Limit speed
	    velocity.limit(maxspeed);
	    location.add(velocity);
	    // Reset acceleration to 0 each cycle
	    acceleration.mult(0);
	    println (flock.get(0));
	  }  
	  
	  //------------------------ A method that calculates and applies a steering force towards a target---------------------------
	  
	  // STEER = DESIRED MINUS VELOCITY
	  PVector seek(PVector target) 
	  {
	    PVector desired = PVector.sub(target, location);  // A vector pointing from the location to the target
	    // Scale to maximum speed
	    desired.normalize();
	    desired.mult(maxspeed);
	    desired.setMag(maxspeed);

	    // Steering = Desired minus Velocity
	    PVector steer = PVector.sub(desired, velocity);
	    
	    steer.limit(maxforce);  // Limit to maximum steering force
	    return steer;
	  }

	  //--------------------------------- Draw a triangle rotated in the direction of velocity ------------------------------------	  
	  
	  void render() 
	  {
	  
		float theta = velocity.heading() + radians(90);	    
	    fill(255);
	    stroke(0);
	    pushMatrix();
	    translate(location.x, location.y);
	    //TODO This is the boid pos
	    Log.d("info", name + " Pos X: " + location.x + " Pos Y: " + location.y);
	    rotate(theta);
	    beginShape(TRIANGLES);
	    vertex(0, -r*2);
	    vertex(-r, r*2);
	    vertex(r, r*2);
	    endShape();
	    popMatrix();

	    //Send here, or save to array or arraylist and send elsewhere AND DUMP THE ARRAY!!!
	    
		  OscMessage locx = new OscMessage("/locx");
		  locx.add(location.x);
		  locx.add(name);
		  oscP5.send(locx, remoteLocation);	
		  
		  OscMessage locy = new OscMessage("/locy");
		  locy.add(location.y);
		  locy.add(name);		  
		  oscP5.send(locy, remoteLocation);			  
	  }		  
	    	  
	  //-------------------------------------------------- Borders of Triangle ----------------------------------------------
	  
	  void borders() 
	  {
	    if (location.x < -r) location.x = width+r;
	    if (location.y < -r) location.y = height+r;
	    if (location.x > width+r) location.x = -r;
	    if (location.y > height+r) location.y = -r;
	  }

	  //------------------------------------------------------ Separation -----------------------------------------------------
	  // Method checks for nearby boids and steers away
	  PVector separate (ArrayList<Boid> boids) 
	  {	    
		  //Modified from 25 to 30
		  float desiredseparation = 30.0f;
	    PVector steer = new PVector(0, 0, 0);
	    int count = 0;
	    // For every boid in the system, check if it's too close
	    for (Boid other : boids) {
	      float d = PVector.dist(location, other.location);
	      // If the distance is greater than 0 and less than an arbitrary amount (0 when you are yourself)
	      if ((d > 0) && (d < desiredseparation)) 
	      {
	        // Calculate vector pointing away from neighbor
	        PVector diff = PVector.sub(location, other.location);
	        diff.normalize();
	        diff.div(d);        // Weight by distance
	        steer.add(diff);
	        count++;            // Keep track of how many
	      }
	    }
	    // Average -- divide by how many
	    if (count > 0) 
	    {
	      steer.div((float)count);
	    }

	    // As long as the vector is greater than 0
	    if (steer.mag() > 0) 
	    {
	      // First two lines of code below could be condensed with new PVector setMag() method
	      // Not using this method until Processing.js catches up
	      // steer.setMag(maxspeed);

	      // Implement Reynolds: Steering = Desired - Velocity
	      steer.normalize();
	      steer.mult(maxspeed);
	      steer.sub(velocity);
	      steer.limit(maxforce);
	    }
	    return steer;
	  }

	  //--------------------------------------------------- Alignment ---------------------------------------------------------
	  
	  // For every nearby boid in the system, calculate the average velocity
	  PVector align (ArrayList<Boid> boids) 
	  {
	    float neighbordist = 50;
	    PVector sum = new PVector(0, 0);
	    int count = 0;
	    
	    //Enhanced For Loop
	    for (Boid other : boids) 
	    {
	      float d = PVector.dist(location, other.location);
	      if ((d > 0) && (d < neighbordist)) {
	        sum.add(other.velocity);
	        count++;
	    }
	  }
	    
	    if (count > 0) 
	    {
	      sum.div((float)count);

          sum.setMag(maxspeed);

	      PVector steer = PVector.sub(sum, velocity);
	      steer.limit(maxforce);
	      return steer;
	    } 
	    else 
	    {
	      return new PVector(0, 0);
	    }
	  }

	  //---------------------------------------------------- Cohesion -------------------------------------------------------
	  
	  // For the average location (i.e. center) of all nearby boids, calculate steering vector towards that location
	  public PVector cohesion (ArrayList<Boid> boids) 
	  {
	    float neighbordist = 50;
	    PVector sum = new PVector(0, 0);   // Start with empty vector to accumulate all locations
	    int count = 0;
	    for (Boid other : boids) 
	    {
	      float d = PVector.dist(location, other.location);
	      if ((d > 0) && (d < neighbordist)) 
	      {
	        sum.add(other.location); // Add location
	        count++;
	      }
	    }
	    if (count > 0) 
	    {
	      sum.div(count);
	      return seek(sum);  // Steer towards the location
	    } 
	    else 
	    {
	      return new PVector(0, 0);
	    }	    
	  } 	    
   }
}
