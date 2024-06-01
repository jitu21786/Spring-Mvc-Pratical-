package controller1;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import student.Student;

@Controller
public class Controller1 {
	@RequestMapping(value = "/collectionData1", method = RequestMethod.GET)
	public String getData1(Model model) {

		//creating ArrayList Object
		ArrayList<String> list = new ArrayList<String>();
		list.add("Java");
		list.add("python");

		model.addAttribute("listData", list);

		//creating Date Object
		Date date = new Date();
		model.addAttribute("dateprint", date);
		
		
		//create StudentClass object
		Student st=new Student(List.of(123,1234));
		model.addAttribute("stObject",st);
		return "collection";
	}

}
