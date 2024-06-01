package controller1;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import bean.EmpData;

@Controller
public class MyController1 {
	@RequestMapping("/beanJsp")
	public String beanJspData(Model m) {
		// creating bean(EmpData) class object and send using Model
		EmpData emp = new EmpData();
		emp.setEmp_id(101);
		emp.setEmp_name("jitu");
		m.addAttribute("empData", emp);
        
		return "bean";
	}

}
