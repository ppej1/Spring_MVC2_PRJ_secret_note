package com.sesoc.secret.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.sesoc.secret.dao.DeleteRepository;
import com.sesoc.secret.dao.EmployeeRepository;
import com.sesoc.secret.dto.Employee_VO;
import com.sesoc.secret.util.FileService;

@Controller
public class EmployeeController {
	@Autowired
	EmployeeRepository repo;
	@Autowired
	DeleteRepository del;
	final String uploadPath="../../../workspace/FINAL_PRJ/src/main/webapp/resources/img/employee"; //C 드라이버 밑에 만들어짐
	
	@RequestMapping(value = "/modifyUserInfo", method = RequestMethod.GET)
	public String  modifyUserInfo(HttpSession session, Model model, Employee_VO employee){
		employee.setUserid((String) session.getAttribute("loginId"));

		Employee_VO result = repo.selectone(employee);
		System.out.println(result);

		String ephone = result.getEPhone();
		model.addAttribute("loginUser", result);
		model.addAttribute("ephone", ephone);
		return "popup/modifyUserInfo";
	}
	
	@RequestMapping(value = "/modifyUserInfo", method = RequestMethod.POST)
	@ResponseBody
	public String  modifyUserInfo(Employee_VO employee){
		del.delete();
		int result = repo.modifyUserInfo(employee);
		if(result == 1){
			return "success";
		}
		return "fail";
	}
	@RequestMapping(value = "/checkpassword", method = RequestMethod.POST)
	@ResponseBody
	public String  checkpassword(HttpSession session, Employee_VO employee){
		
		employee.setUserid((String) session.getAttribute("loginId"));
		Employee_VO result = repo.checklist(employee);
		if(result != null){
			return "success";
		}
		return "fail";
	}
	
	
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String home(String logid, String logpwd, Model model, HttpSession session) {
		Employee_VO result = new Employee_VO();
		result.setUserid(logid);
		result.setUserpwd(logpwd);
		Employee_VO employee = repo.selectone(result);	
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
		String savedfile = FileService.saveFile(upload, uploadPath);
		employee.setEImg(savedfile);
		if (employee.getEImg() == "") {
			employee.setEImg("avatar.png");
		}
		repo.insert(employee);
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
		String message = "disable";
		Employee_VO user = repo.selectone(employee);
		if(user == null) {
			message = "able";
		}
		return message;
	}
}
