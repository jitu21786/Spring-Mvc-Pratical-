package controller2;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Controller2 
{
	//@RequestMapping("/collectionData2")
	//@RequestMapping(path="/collectionData2", method=RequestMethod.GET)
	//@RequestMapping(value="/collectionData2", method=RequestMethod.GET)
	@RequestMapping(path="/collectionData2", method=RequestMethod.GET)
	public ModelAndView getData2()
	{
		ModelAndView modelAndView=new ModelAndView();
		
		//list
		List<String>fruit=List.of("Mango","Banana");
		modelAndView.addObject("fruitData",fruit);
		
		//Map
		Map<Integer,String>data=Map.of(101,"jitu",200,"jitendra");
		modelAndView.addObject("mapData",data);
		
		modelAndView.setViewName("collectionjstl");
		
		return modelAndView;
	}

}
