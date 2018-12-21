package com.edubaik.strokes.models;

import javax.persistence.Entity;

@Entity
public class Round {
	private Double totalScore;

	public Round() {	
	}
	
	public Double getTotalScore() {
		return totalScore;
	}

	public void setTotalScore(Double totalScore) {
		this.totalScore = totalScore;
	}

}
