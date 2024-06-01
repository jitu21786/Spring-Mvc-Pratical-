package controller1;

import org.springframework.stereotype.Controller;
import student.Student;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController

public class Controller1 {
	@RequestMapping("/homePage")
	public Student homePage() {
		return new Student();
	}

	//@RequestMapping(path = "/process", method = RequestMethod.POST)
/*	@RequestMapping("/process")
	public String viewPage(HttpServletRequest req, Model model) {
		// try to get with the old approach HttpServletRequest req
		int id = (Integer.parseInt(req.getParameter("id")));
		String name = req.getParameter("fname");
		String email = req.getParameter("emailId");
		String password = req.getParameter("pass");

		System.out.println(id + " " + name + " " + email + " " + password);

		// send controller to view using Model Interface
		model.addAttribute("id1", id);
		model.addAttribute("name1", name);
		model.addAttribute("email1", email);
		model.addAttribute("password1", password);

		return "view";
	}*/
	
	
	//using @RequestParam Annotation
	
	@RequestMapping("/process")
	
	public String viewPage(@RequestParam("id" )int id1, @RequestParam("fname")String name,
			@RequestParam("emailId")String email,@RequestParam("pass" )String password, 
			Model model)
	{
		System.out.println(id1+" "+name+" "+email+" "+password);
		
		model.addAttribute("id1", id1);
		model.addAttribute("name1", name);
		model.addAttribute("email1", email);
		model.addAttribute("password1", password);

		return "view";
	}
	
	

}
