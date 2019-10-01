package com.sesoc.secret.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.sesoc.secret.dao.SubClassRepository;
import com.sesoc.secret.dto.MainClassVO;
import com.sesoc.secret.dto.SubClassVO;

@Controller
public class SubClassController {
	
	@Autowired
	SubClassRepository repo;
	
	final String uploadPath="../../../workspace/Final_project/Final_Project/src/main/webapp/resources/img/meterial"; //C 드라이버 밑에 만들어짐
	
	@RequestMapping(value = "/selectMainClassList",  method = RequestMethod.POST)
	@ResponseBody 
	public ArrayList<MainClassVO> selectMainClassList(){
		
		ArrayList<MainClassVO> list = repo.selectMainClassList();
		System.out.println(list);
		return list;
	}
	
	@RequestMapping(value="/subpic", method=RequestMethod.POST)
	@ResponseBody
	public String imgPreview(MultipartFile upload){
		String fileName = "";
		if(upload != null) {
			fileName = new Date().getTime() + upload.getOriginalFilename();
			File saveFile = new File(uploadPath, fileName);
			try {
				upload.transferTo(saveFile);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return fileName;
	}
	
	@RequestMapping(value = "/insertSubclass", method = RequestMethod.POST)
	@ResponseBody
	public int insert(SubClassVO subclass) {
		System.out.println(subclass);

		if (subclass.getSImg() == "") {
			subclass.setSImg("food.jpg");
		}
		repo.insert(subclass);
		
		return 0;
	}
	
	
	@RequestMapping(value = "/chaingeSubClassPicture", method = RequestMethod.POST)
	@ResponseBody
	public SubClassVO chaingeSubClassPicture(SubClassVO sub){
		System.out.println(sub);
		SubClassVO list = repo.chaingeSubClassPicture(sub);
		System.out.println(list);
		return list;
	}	
}
