package controller1;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class Controller1 {

	@RequestMapping("/processByRedirect")
	public String Home() {
		return "search";
	}

	@RequestMapping("/processByRedirectView")
	public String Home1() {
		return "search";
	}

	@RequestMapping(path = "/process", method = RequestMethod.POST)
	public String getData(@RequestParam("queryforSearch") String query, @RequestParam("action") String actionComing) {

		if (actionComing.equalsIgnoreCase("Google")) {
			return "redirect:https://www.google.com";
		} else if (actionComing.equalsIgnoreCase("YouTube")) {
			return "redirect:https://www.youtube.com";
		} else {
			if (query.isEmpty()) {
				return "search";
			} else {
				String url = "redirect:https://www.google.com/search?q=" + query;
				return url;
			}

		}

	}

	@RequestMapping(path = "/process1", method = RequestMethod.POST)
	public RedirectView getData1(@RequestParam("queryforSearch") String query,
			@RequestParam("action") String actionComing) {

		// creating Class Object
		RedirectView view = new RedirectView();

		if (actionComing.equalsIgnoreCase("Google")) {
			view.setUrl("https://www.google.com");
			return view;
		} else if (actionComing.equalsIgnoreCase("YouTube")) {
			view.setUrl("https://www.youtube.com");
			return view;
		} else {
			if (query.isEmpty()) {
				view.setUrl("processByRedirectView");
				return view;
			} else {
				String url = "https://www.google.com/search?q=" + query;
				view.setUrl(url);
				return view;
			}

		}

	}

}
