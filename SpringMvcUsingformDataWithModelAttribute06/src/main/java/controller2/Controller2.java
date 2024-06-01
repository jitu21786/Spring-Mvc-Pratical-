package controller2;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import emp.Emp;

@Controller
public class Controller2 {
	@RequestMapping(path = "/process", method = RequestMethod.POST)

	/*
	 * getting the value text field with the help of @ModelAttribute-> for this we
	 * are creating bean class and place value and one field using @RequestParam
	 */
	public String login_Successful(@ModelAttribute("em") Emp emp1, @RequestParam("pass") String password) {
		System.out.println(emp1.getId() + " " + emp1.getName());
		System.out.println(password);
		return "loginsuccessful";
	}

	@ModelAttribute
	public void setCommonName(Model model) {
	
		model.addAttribute("successful", "successful Page");
		model.addAttribute("name", "jitu");

	}
	
	@RequestMapping("/name")
	public String viewName()
	{
		return "name";
	}

}
