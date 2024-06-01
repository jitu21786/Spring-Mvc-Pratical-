package controller1;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;

@Controller
public class ControllerWithSingleMethod {

	@RequestMapping("/exception1")
	public String exceptionHandle1() {
		// create null pointer Exception

		String s = null;
		s.length();

		return "page1"; // here page1(view) never print because exception occurs before view
	}

	@RequestMapping("/exception2")
	public String exceptionHandle2() {
		// create Number format Exception
		Integer.parseInt("java");

		return "page1"; // here page1(view) never print because exception occurs before view
	}

	@RequestMapping("/exception3")
	public String exceptionHandle3() {
		// trying to create ArraysOutOfBoundsException
		int a[] = new int[2];
		a[2] = 20;
		return "page1"; // here page1(view) never print because exception occurs before view
	}

	// it will handle AllException in current controller
	@ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler(Exception.class)
	public String nullPointer(Model model, Exception exception) {
		model.addAttribute("exception", exception.getMessage());
		return "error_page";
	}

}
