/*
 * package controller1;
 * 
 * import org.springframework.stereotype.Controller; import
 * org.springframework.ui.Model; import
 * org.springframework.web.bind.annotation.ExceptionHandler; import
 * org.springframework.web.bind.annotation.RequestMapping;
 * 
 * @Controller public class Controller1DiffernetMethods {
 * 
 * @RequestMapping("/exception1") public String exceptionHandle1() { // create
 * null pointer Exception String s = null; s.length(); return "page1"; // here
 * page1 is printing only hello if no exception occoured }
 * 
 * @RequestMapping("/exception2") public String exceptionHandle2() { // create
 * Number format Exception Integer.parseInt("java");
 * 
 * return "page1"; // here page1 is printing only hello if no exception occoured
 * }
 * 
 * @RequestMapping("/exception3") public String exceptionHandle3() { // trying
 * to create ArraysOutOfBoundsException int a[] = new int[2]; a[2] = 20; return
 * "page1"; // here page1 is printing only hello if no exception occoured }
 * 
 * // it will handle only one Exception NullPointer in current controller
 * 
 * @ExceptionHandler(value = NullPointerException.class) public String
 * nullPointer(Model model, NullPointerException exception) {
 * model.addAttribute("exception", exception.getMessage()); return "error_page";
 * }
 * 
 * 
 * // it will handle only one Exception NumberFormat in current controller
 * 
 * @ExceptionHandler(NumberFormatException.class) public String
 * numberFormat(Model model, NumberFormatException exception) {
 * model.addAttribute("exception", exception.getMessage()); return "error_page";
 * }
 * 
 * 
 * // it will handle All Exception in current controller
 * 
 * @ExceptionHandler(Exception.class) public String allException(Model
 * model,Exception exception) { model.addAttribute("exception",
 * exception.getMessage()); return "error_page"; }
 * 
 * }
 */