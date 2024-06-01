package controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import entity.Student;

@Controller
public class Controller1 {
	@RequestMapping("regist")
	public String register(Model model) {
		Student stud = new Student();
		model.addAttribute("student", stud);
		// getting List here
		List<String> listData = getList();
		model.addAttribute("list1", listData);

		// adding fruit list here and map
		List<String> fruit = getFruit();
		model.addAttribute("fruitData", fruit);

		// adding allgender by Array
		String gender[] = getAllGender();
		model.addAttribute("genderAll", gender);
		return "register";
	}

	@RequestMapping(path = "modelClass", method = RequestMethod.POST)
	public String submit(@ModelAttribute("st_data") Student data) {
		System.out.println(data);
		return "success";
	}

	// for country
	public List<String> getList() {
		ArrayList<String> list = new ArrayList<String>();
		list.add("india");
		list.add("US");
		list.add("UK");
		return list;

	}

	// for fruit
	public List<String> getFruit() {
		ArrayList<String> fruit = new ArrayList<String>();
		fruit.add("Apple");
		fruit.add("Mango");
		fruit.add("Banana");
		return fruit;

	}

	// for allGender
	public String[] getAllGender() {
		return new String[] { "male", "female", "other" };
	}

}
