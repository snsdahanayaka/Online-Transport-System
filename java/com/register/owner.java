package com.register;

public class owner {
	
	private int id;
	private String oname;
	private String email;
	private String pnum;
	private String uname;
	private String psw;
	private String type;
	

	public owner(int id, String oname, String email, String pnum, String uname, String psw,String type) {
		
		this.id = id;
		this.oname = oname;
		this.email = email;
		this.pnum = pnum;
		this.uname = uname;
		this.psw = psw;
		this.type=type;
	}

	public int getId() {
		return id;
	}


	public String getOname() {
		return oname;
	}

	
	public String getEmail() {
		return email;
	}

	

	public String getPnum() {
		return pnum;
	}



	public String getUname() {
		return uname;
	}


	public String getPsw() {
		return psw;
	}

	
	public String getType() {
		return type;
	}

	
	
	

}
