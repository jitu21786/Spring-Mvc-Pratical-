package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Controller1 {
	@RequestMapping("/homePage/{id}/{name}")
	public String getData(@PathVariable("id") int idData, @PathVariable("name")String nameData, Model model) {
		System.out.println(idData + " " + nameData);
		model.addAttribute("idValue", idData);
		model.addAttribute("nameValue", nameData);

		return "home";
	}

}
