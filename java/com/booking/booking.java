package com.booking;


//abstract parent class which implements the interface
public abstract class booking implements bookInt{
	

	protected int id;
	protected String pl;
	protected String dl;
	protected String num;
	protected String date;
	protected String time;
	protected String vehicle;
	protected String cusId;
	protected String driverId;
	protected String cost;
	
	public booking(int id, String pl, String dl, String num, String date, String time, String vehicle, String cusId, String driverId, String cost) {
		this.id=id;
		this.pl = pl;
		this.dl = dl;
		this.num = num;
		this.date = date;
		this.time = time;
		this.vehicle = vehicle;
		this.cusId=cusId;
		this.driverId=driverId;
		this.cost = cost;
	}
	
	public int getid() {
		return id;
	}
	public String getPl() {
		return pl;
	}

	public void setPl(String pl) {
		this.pl = pl;
	}

	public String getDl() {
		return dl;
	}

	public void setDl(String dl) {
		this.dl = dl;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getVehicle() {
		return vehicle;
	}

	public void setVehicle(String vehicle) {
		this.vehicle = vehicle;
	}

	public String getCost() {
		return cost;
	}

	public void setCost(String cost) {
		this.cost = cost;
	}

	public String getCusId() {
		return cusId;
	}

	public void setCusId(String cusId) {
		this.cusId = cusId;
	}

	public String getDriverId() {
		return driverId;
	}

	public void setDriverId(String driverId) {
		this.driverId = driverId;
	}

	
	
	
	
		
	
	
	
}
