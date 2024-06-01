package springMvcWithJdbc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springMvcWithJdbc.entity.Emp;
import springMvcWithJdbc.service.EmpService;

@Controller
public class ControllerClass {
	@Autowired
	EmpService service;

	@RequestMapping("/home1")
	public String HomePage() {
		return "home";
	}

	@RequestMapping("/regist")
	public String registerData() {
		return "register";
	}

	@RequestMapping(path = "/process", method = RequestMethod.POST)
	public String processData(@ModelAttribute("emp1") Emp emp) {
		System.out.println(emp.getId() + " " + emp.getName() + " " + emp.getCity());
		int result = service.userDetail(emp);
		System.out.println(result);
		return "success";
	}

	@RequestMapping("/showData")
	public String showData(Model model) {
		List<Emp> empData = service.fetchAllData();
		model.addAttribute("empListData",empData);
		return "show";
	}
}
