package controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//@RequestMapping("/done")  //it is optional

@org.springframework.stereotype.Controller
public class Controller {
	
	// @RequestMapping("/first")
	
	@RequestMapping(value = "/first", method = RequestMethod.GET)
	public String getDateDtaa() {
		return "date";
	}

	@GetMapping("/second")
	public String getHello() {
		return "hello";
	}
}
