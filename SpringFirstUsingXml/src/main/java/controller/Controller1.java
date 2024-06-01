package controller;

import org.springframework.web.bind.annotation.RequestMapping;

@org.springframework.stereotype.Controller
public class Controller1 
{

	@RequestMapping("/one")
	public String getDateDtaa() {
		return "two";
	}

	@RequestMapping("/htmlPage")
	public String getHtml() {
		return "nine";
	}
}
