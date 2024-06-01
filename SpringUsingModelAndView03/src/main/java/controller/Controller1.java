package controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Controller1 
{
	@RequestMapping("/collection")
	public ModelAndView getData()
	{
		//creating Map Object
		Map<Integer, String> map = new HashMap<Integer,String>();
		map.put(100, "jitu");
		map.put(80, "mishu");
		map.put(100, "Jitendra");
		
		//create ModelAndViewObject
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("mapData",map);
		
		//return view Name also
		modelAndView.setViewName("CollectionOperation");
		
		return modelAndView;
	}

}
