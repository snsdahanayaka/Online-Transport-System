package com.route;

public abstract class routeDetails implements routeInt {
	
//encapsulation
	protected  int routeId;
	protected  String driverId;
	protected  String province;
	protected  String district;
	protected  String city;
	protected  String timeFrame;
	protected  String vehicle;
	protected  String service;
	


	
	public routeDetails(int routeId, String driverId, String province, String district, String city, String timeFrame,
			String vehicle, String service) {
		super();
		this.routeId = routeId;
		this.driverId = driverId;
		this.province = province;
		this.district = district;
		this.city = city;
		this.timeFrame = timeFrame;
		this.vehicle = vehicle;
		this.service = service;
	}
//abstraction is used when public methods are used to access private attributes
	public int getRouteId() {
		return routeId;
	}




	public String getDriverId() {
		return driverId;
	}




	public String getProvince() {
		return province;
	}




	public String getDistrict() {
		return district;
	}




	public String getCity() {
		return city;
	}




	public String getTimeFrame() {
		return timeFrame;
	}




	public String getVehicle() {
		return vehicle;
	}




	public String getService() {
		return service;
	}

	
}
