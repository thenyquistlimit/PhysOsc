package com.example.physosc;

import java.util.ArrayList;


import com.example.physosc.ThirdActivity.Boid;

public class Flock 
{
	// Declaring the ArrayList, note the use of the syntax "<Boid>" to indicate
	// our intention to fill this ArrayList with Boid objects	
	  ArrayList<Boid> boids; // An ArrayList for all the boids

	   public Flock() 
	   {
	     boids = new ArrayList<Boid>(); // Create an empty ArrayList
	   }

	   public void run() 
	   {
	      for (Boid b : boids) 
	      {
	         b.run(boids);  // Passing the entire list of boids to each boid individually
	      }
	   }

	   public void addBoid(Boid b) 
	   {
	     boids.add(b);	
       }

	public int size() {
		// TODO Auto-generated method stub
		return 0;
	}

	public Boid get(int i) {
		// TODO Auto-generated method stub
		return null;
	}	
	}
	   	 
	  
