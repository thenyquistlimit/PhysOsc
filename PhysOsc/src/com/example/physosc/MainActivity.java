package com.example.physosc;

import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.View;
import android.widget.Button;

public class MainActivity extends Activity {

	// Create Main Activity
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		//Button Set Up
		setupOSCButton();
		setupBoidsButton();
	}

	//Callback for the main activity
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
		
	}
		
    //Initialise Boids Button 
	private void setupBoidsButton() 
	{
		Button OSCButton = (Button) findViewById(R.id.boids);
		OSCButton.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				
				startActivity(new Intent (MainActivity.this, ThirdActivity.class));
				
			}
		});
	}

	//Initialise OSC Settings Button 
		private void setupOSCButton() 
		{
			Button OSCButton = (Button) findViewById(R.id.oscconfig);
			OSCButton.setOnClickListener(new View.OnClickListener() {
				
				@Override
				public void onClick(View v) {
					
					startActivity(new Intent (MainActivity.this, SecondActivity.class));
					
				}
			});
			
		}
			
	}


