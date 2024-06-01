package controller2;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController2 {
	@RequestMapping("/collectionDataObject")
	public String collectionData(Model m) {
		// adding Integer
		m.addAttribute("number", 9928779);

		// adding List Data
		List<String> list = new ArrayList<String>();
		list.add("Java");
		list.add("Python");
		list.add("Dsa");

		m.addAttribute("listData", list);
		return "collection";
	}

}
