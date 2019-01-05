package com.edubaik.strokes.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.edubaik.strokes.services.ApiService;

@RestController
public class ShotCalculatorCtrl {
	@Autowired
	private ApiService apiService;
	
	@RequestMapping("/shots")
	public String createShots()  {
		apiService.createShots();
		return "done";
	}
	
}
