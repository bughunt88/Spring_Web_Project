package myproject.history.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/history")
public class HistoryJavaController {
	private final String command = "/java" ; //���� �� �ݵ�� �����ϼ���


	@RequestMapping( value = command, method = RequestMethod.GET )
	public String doGet( ){
		return "history/java" ; 
	}
}
