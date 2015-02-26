package com.example.physosc;

import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.EditText;
import android.widget.Toast;

public class SecondActivity extends Activity {
	
	private EditText hostNumber;
	private EditText portoutNumber;
	private EditText portinNumber;
	private EditText localipaddress;
	
	// Create Second Activity
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_second);
		
        Log.e("getLocalIpAddress", setUpIP());
		
		//Get References to the Edit Texts
		hostNumber = (EditText)findViewById(R.id.editText1);
		portoutNumber = (EditText)findViewById(R.id.editText2);
		portinNumber = (EditText)findViewById(R.id.editText3);
		localipaddress = (EditText)findViewById(R.id.editText4);
				
		//Create instance of SharedPreferences called settings
		//MyPrefs is name of the preference file
		//0 will allow us to write to the preference
		SharedPreferences settings = getSharedPreferences("MyPrefs", 0);
		
		//Put in default value
		hostNumber.setText(settings.getString("hostValue", ""));
		portoutNumber.setText(settings.getString("portoutValue", ""));
		portinNumber.setText(settings.getString("portinValue", ""));
		localipaddress.setText(settings.getString("ip", ""));
		
	}

	@Override
	protected void onStop(){
	//called when the application is about to exit
	    super.onStop();
	    SharedPreferences settings = getSharedPreferences("MyPrefs", 0);
	    
	    //To make changes we need to get an editor
	    SharedPreferences.Editor editor = settings.edit();
	    editor.putString("hostValue", hostNumber.getText().toString());
	    editor.putString("portoutValue", portoutNumber.getText().toString());
	    editor.putString("portinValue", portinNumber.getText().toString());
	    editor.putString("ip", localipaddress.getText().toString());
	    editor.commit();
	    
	}
	
	// Obtaining my local IP address
	public String setUpIP()
	{
		WifiManager wifiManager = (WifiManager) getSystemService(WIFI_SERVICE);
		WifiInfo wifiInfo = wifiManager.getConnectionInfo();
		int ipAddress = wifiInfo.getIpAddress();
		String ip = intToIp(ipAddress);
		// Displaying my IP Address with a Toast Message 
		Toast.makeText(getApplicationContext(), (String)ip, 
				   Toast.LENGTH_LONG).show();
		EditText tv = (EditText) findViewById(R.id.editText4);
        tv.setText(ip);
		return ip;
	}
		 
	   //Parsing the returning IPv4 data into a readable IP address
	   //Little Endian - Readable IP Address
		public String intToIp(int i) {
		   return (( i & 0xFF) + "." +
		               ((i >> 8 ) & 0xFF) + "." +
		               ((i >> 16 ) & 0xFF) + "." +
		               (( i >> 24) & 0xFF));
		   
		}

	//Callback for the second activity OSC Settings
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.second, menu);
		return true;
	}
	
	//Make the menu options click-able 
	@Override
	public boolean onOptionsItemSelected(MenuItem item)
	{
	    switch (item.getItemId())
	    {		    	
		    case R.id.Done:
		    	Intent intent = new Intent (this, MainActivity.class);
		    	this.startActivity(intent);	    	
		    	return true;	    	
	    	
	    	default:
	    		return super.onOptionsItemSelected(item);
	    }
	
	}		

}


