package controller2;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController2 
{
	@RequestMapping("/outOfBound")
	public String getException1()
	{
		String s[]=new String[2];
		s[2]="jitu";
		return "view";
	}
}
