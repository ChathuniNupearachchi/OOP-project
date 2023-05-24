package com.room;

import java.io.Serializable;


public class room implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private String type;
	private String arrivaldate;
	private String depaturedate; 
	
	public room() {
		
	}
	
	public void setType(String roomtype)
	 {
		this.type=roomtype; 
		 
	 }
	 
   public void setArrivaldate(String arrivaldate) {
		this.arrivaldate = arrivaldate;
	}

	public void setDepaturedate(String depaturedate) {
		this.depaturedate = depaturedate;
	}

	public String getArrivaldate() {
		return arrivaldate;
	}

	public String getDepaturedate() {
		return depaturedate;
	}

public String getType() {
		return type;
	}

 
	

}
