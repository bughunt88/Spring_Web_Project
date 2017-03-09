package myproject.history.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/history")
public class HistorySpringController {
	private final String command = "/spring" ; //���� �� �ݵ�� �����ϼ���


	@RequestMapping( value = command, method = RequestMethod.GET )
	public String doGet( ){
		return "history/spring" ; 
	}
}
