package com.edubaik.strokes.models;

import javax.persistence.Entity;

@Entity
public class Shot {
	private String type;
	private Integer distance;
	
	public Shot() {
		
	}
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Integer getDistance() {
		return distance;
	}
	public void setDistance(Integer distance) {
		this.distance = distance;
	}
}
