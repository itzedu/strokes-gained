package com.edubaik.strokes.controllers;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.edubaik.strokes.services.ExcellReaderService;

@RestController
public class ShotCalculatorCtrl {
	@Autowired
	private ExcellReaderService excellService;

//  End point to create shot types and yardages in the database	
//	@RequestMapping("/shots")
//	public String createShots() throws IOException  {
//		excellService.createShots();
//		return "done";
//	}
	
}
