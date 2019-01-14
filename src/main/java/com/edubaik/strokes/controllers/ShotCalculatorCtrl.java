package com.edubaik.strokes.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.edubaik.strokes.models.Shot;
import com.edubaik.strokes.services.ExcellReaderService;
import com.edubaik.strokes.services.ShotService;

@RestController
public class ShotCalculatorCtrl {
	@Autowired
	private ExcellReaderService excellService;
	@Autowired
	private ShotService shotService;

//  End point to create shot types and yardages in the database	
//	@RequestMapping("/shots")
//	public String createShots() throws IOException  {
//		excellService.createShots();
//		return "done";
//	}
	
//	formula
//	(Pre-shot strokes-to-hole value) – (Post-shot strokes-to-hole value) – 1.00 = strokes gained value

	@GetMapping("/getInitialAvg")
	public Shot getInitialAvg(@RequestParam(value="yards") Integer yards, @RequestParam(value="shotType") String shotType) {
		return shotService.findShotByDistanceAndType(yards, shotType);
	}
	
	
}
