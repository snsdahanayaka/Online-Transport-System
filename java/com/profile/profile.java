package com.profile;



public class profile {
	
	//encapsulation
	private int id;
	private String oname;
	private String email;
	private String pnum;
	private String addr;
	
	
	
	
	
		public profile(int id, String oname, String email, String pnum, String addr) {
			this.id = id;
			this.oname = oname;
			this.email = email;
			this.pnum = pnum;
			this.addr = addr;
		}
		
		//abstraction is used when public methods are used to access private attributes
		public String getOname() {
				return oname;
			}
			public String getEmail() {
				return email;
			}
			public String getPnum() {
				return pnum;
			}
			public String getAddr() {
				return addr;
			}
			public int getId() {
				return id;
			}
	
	

}
