package controller1;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController1
{
	@RequestMapping("/nullPointer")
	public String getException1()
	{
		String s=null;
		s.length();
		return "view";
	}

}
