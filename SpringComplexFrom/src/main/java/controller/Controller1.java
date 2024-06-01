package controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import controller.entity.Student;

@Controller
public class Controller1 {
	@RequestMapping("/home")
	public String homePage() {
		return "from";
	}

	@RequestMapping(path = "/process", method = RequestMethod.POST)
	public String processData(@ModelAttribute("st") Student student,BindingResult result) 
	{
		if(result.hasErrors())
		{
			return "from";
		}
		System.out.println(student);
		return "success";
	}

	
	//for Date Validation
	/*
	 * @InitBinder public void initBinder(WebDataBinder binder) { SimpleDateFormat
	 * dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	 * dateFormat.setLenient(false); binder.registerCustomEditor(Date.class, new
	 * CustomDateEditor(dateFormat, true)); }
	 */
}
