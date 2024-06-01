package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyController1 {

	/*
	 * @RequestMapping("/homeRequest")
	 * 
	 * @RequestMapping(value = "/aboutRequest",method=RequestMethod.GET) we can use
	 * anyone as per the choice
	 */
	@RequestMapping("/homeRequest")
	public String HomePage() {
		System.out.println("calling the Home url");
		return "Home";
	}

	@RequestMapping(value = "/aboutRequest", method = RequestMethod.GET)
	public String AboutPage() {
		
		System.out.println("calling the about url");
		return "about";
	}

}
