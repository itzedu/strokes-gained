package com.edubaik.strokes.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edubaik.strokes.repositories.ShotRepository;

@Service
public class ApiService {
	@Autowired 
	private ShotRepository shotRepo;

	public void createShots() {
		
	}
}
