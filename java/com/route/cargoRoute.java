package com.route;

public class cargoRoute extends routeDetails {


	final String SERVICE="cargo";
	
	public cargoRoute(int routeId, String driverId, String province, String district, String city, String timeFrame,
			String vehicle, String service) {
		super(routeId, driverId, province, district, city, timeFrame, vehicle, service);
		// TODO Auto-generated constructor stub
	}

	@Override
	public void service() {
		
		this.service=SERVICE;
		
	}

}
