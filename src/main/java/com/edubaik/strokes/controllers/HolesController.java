package com.edubaik.strokes.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HolesController {
	@RequestMapping("/")
	public String index()  {
		return "/holes/index.jsp";
	}
}
