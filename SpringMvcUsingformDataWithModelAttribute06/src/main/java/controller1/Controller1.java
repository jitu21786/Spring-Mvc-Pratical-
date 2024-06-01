package controller1;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Controller1 
{
	@RequestMapping("/loginData")
	public String loginPage()
	{
		return "login";
	}

	@ModelAttribute
	public void setCommonName(Model model) {
		model.addAttribute("page","LoginPage(dynamic)");
		model.addAttribute("user","Jitendra Kumar Sharma");

	}
}
