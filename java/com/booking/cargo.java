package com.booking;

//child class of booking parent class
public class cargo extends booking {
	
	
	final private String costPerKm="1000.00";

	public cargo(int id, String pl, String dl, String num, String date, String time, String vehicle, String cusId, String driverId, String cost) {
		
		super(id, pl, dl,num,date,time,vehicle,cusId,driverId,cost);
	
	}


	//Overridden method using polymorphism concept
	@Override
	public void calcCost() {
				
		this.cost=costPerKm;
	}
}
