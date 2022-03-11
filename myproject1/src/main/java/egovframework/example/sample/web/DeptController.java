package egovframework.example.sample.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DeptController {

	@RequestMapping(value ="/deptWrite.do")
	public String deptWrite() {
		return "dept/deptWrite";
	}
	
}
