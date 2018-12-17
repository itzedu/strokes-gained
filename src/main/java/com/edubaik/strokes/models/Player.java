package com.edubaik.strokes.models;

import javax.persistence.Entity;

@Entity
public class Player {
	private String firstName;
	private String lastName;
	private String email;
	private Double handicap;
	
	public Player() {
		
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Double getHandicap() {
		return handicap;
	}
	public void setHandicap(Double handicap) {
		this.handicap = handicap;
	}
	
}
