package com.sesoc.secret.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.sesoc.secret.dao.EmployeeRepository;
import com.sesoc.secret.dto.Employee_VO;
import com.sesoc.secret.util.FileService;

@Controller
public class EmployeeController {
	@Autowired
	EmployeeRepository repo;
	
	final String uploadPath="/FinalProject/secret_note/src/main/webapp/resources/img/employee"; //C 드라이버 밑에 만들어짐

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String home(String logid, String logpwd, Model model, HttpSession session) {
		if(logid == null || logpwd == null){
			return "index";
		}
		Employee_VO result = new Employee_VO();
		result.setUserid(logid);
		result.setUserpwd(logpwd);
		System.out.println("위"+result);
		Employee_VO employee = repo.selectone(result);	
		System.out.println("아래"+employee);
		if(employee != null){
			session.setAttribute("loginId", employee.getUserid());
			session.setAttribute("loginName", employee.getUserName());
			model.addAttribute("userimage", employee.getEImg());
			model.addAttribute("useremail", employee.getEmail());
			model.addAttribute("userphone", employee.getEPhone());
			return "main";
		}
		return "index";
	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String home(Employee_VO employee, Model model, MultipartFile upload) {
		System.out.println(employee);
		String savedfile = FileService.saveFile(upload, uploadPath);
		employee.setEImg(savedfile);
		int result = repo.insert(employee);
		return "index";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Employee_VO employee, Model model, HttpSession session) {
		session.invalidate();
		return "index";
	}
	
	@RequestMapping(value = "/idcheck", method = RequestMethod.GET)
	@ResponseBody
	public String idcheck(Employee_VO employee) {
		Employee_VO user = repo.selectone(employee);
		String message = "This is already used id.";
		if(user == null) {
			message = "You can use this id.";
		}
		return message;
	}
}
