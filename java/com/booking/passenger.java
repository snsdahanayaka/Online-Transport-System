package com.booking;

public class passenger extends booking {
	
	final private String costPerKm="500.00";
	
	

	
	
	
	
	

	public passenger(int id, String pl, String dl, String num, String date, String time, String vehicle, String cusId, String driverId, String cost) {
		
		
		
		super(id, pl, dl, num, date, time, vehicle, cusId, driverId,cost);
		
		//this.cost=cost;
		
		
		
	}


	//Overridden method using polymorphism concept
	@Override
	public void calcCost() {
				
		this.cost=costPerKm;
	}

}
