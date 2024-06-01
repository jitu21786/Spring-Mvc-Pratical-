package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Controller1 
{
	@RequestMapping("/home")
	public String Home()
	{
		return "Hello";
	}
	
	@RequestMapping("/home1")
	public String Home1()
	{
		return "Hello1";
	}

}
