package controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import controller.entity.StudentEntity;
import controller.service.StudentServiceImpl;

@Controller
public class Controller2 {

	// first Way with the redirect url
	/*
	 * @RequestMapping("/first") public String getFirst() {
	 * System.out.println("this is thefirst page"); return "redirect:secondPage";
	 * //we can also send outside of the application //return
	 * "redirect:https://www.youtube.com/"; }
	 * 
	 * @RequestMapping("/secondPage") public String getSecond() {
	 * System.out.println("this is thesecond page");
	 * 
	 * return "second"; }
	 */

	// second way using RedirectView Class

	/*
	 * @RequestMapping("/first") public RedirectView getFirst() {
	 * System.out.println("this is thefirst page"); RedirectView view=new
	 * RedirectView(); //inside application
	 * 
	 * view.setUrl("secondPage"); return view;
	 * 
	 * 
	 * //outside application view.setUrl("https://www.youtube.com/"); return view; }
	 * 
	 * @RequestMapping("/secondPage") public String getSecond() {
	 * System.out.println("this is thesecond page");
	 * 
	 * return "second"; }
	 * 
	 */

	// third ways with the help of HttpServletResponse

	@RequestMapping("/first")
	public void getFirst(HttpServletResponse res) throws IOException {
		System.out.println("this is thefirst page");
		res.sendRedirect("loginPage");

		// outside application
		// res.sendRedirect("https://www.youtube.com/");

	}

	@RequestMapping("/loginPage")
	public String getSecond() {
		System.out.println("this is thesecond page");

		return "login";
	}

	// we need to service object
	@Autowired
	private StudentServiceImpl obj;

	@RequestMapping(path = "/process", method = RequestMethod.POST)
	public String processData(@ModelAttribute("data") StudentEntity entity) {
		System.out.println(entity.getId() + " " + entity.getName() + entity.getCity());
		Integer i = (Integer) obj.saveUserDetail(entity);
		return "done";
	}

}
