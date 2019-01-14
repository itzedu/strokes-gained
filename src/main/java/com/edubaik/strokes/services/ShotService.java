package com.edubaik.strokes.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edubaik.strokes.models.Shot;
import com.edubaik.strokes.repositories.ShotRepository;

@Service
public class ShotService {
	@Autowired
	private ShotRepository sR;
	
	public Shot findShotByDistanceAndType(Integer yards, String shotType) {
		return sR.findByDistanceAndType(yards, shotType);
	}

}
