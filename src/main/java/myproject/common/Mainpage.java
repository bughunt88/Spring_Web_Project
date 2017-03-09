package myproject.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/common")
public class Mainpage {
	private static final String getPage = "/common/mainPage";

	private static final String command = "/main";

	@RequestMapping(value=command , method=RequestMethod.GET)
	public String doActionGet(){
		System.out.println(this.getClass() + " Get ¹æ½Ä µé¾î¿È");
		
		return getPage ; 
	}
}
