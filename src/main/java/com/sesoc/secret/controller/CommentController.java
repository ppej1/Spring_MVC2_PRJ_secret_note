package com.sesoc.secret.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sesoc.secret.dao.CommentRepository;
import com.sesoc.secret.dao.DeleteRepository;
import com.sesoc.secret.dto.CommentsVO;
import com.sesoc.secret.dto.CommentsVO_img;

@Controller
public class CommentController {
	@Autowired
	CommentRepository repo;

	@RequestMapping(value = "/loadAllComment", method = RequestMethod.POST)
	@ResponseBody
	public ArrayList<CommentsVO_img> loadAllMemo(CommentsVO comments){
		ArrayList<CommentsVO_img> result = repo.loadAllMemo (comments);
		
		return result;
	}		
	
	
	@RequestMapping(value = "/insertComment", method = RequestMethod.POST)
	@ResponseBody
	public int insertComment(CommentsVO comments, HttpSession session){
		comments.setUserid((String)session.getAttribute("loginId"));

		int result = repo.insertComment(comments);
		return result;
	}	
	@RequestMapping(value = "/deleteComment", method = RequestMethod.POST)
	@ResponseBody
	public int deleteComment(CommentsVO comments, HttpSession session){
		comments.setUserid((String)session.getAttribute("loginId"));
		int result = repo.deleteComment(comments);

		
		return result;
	}	
}
