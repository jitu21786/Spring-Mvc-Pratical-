package controller1;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class Controller1 
{
	@RequestMapping("/first")
	public String getFirst() 
	{
		//return "redirect:/second";
		return "register";
		
	}

}
