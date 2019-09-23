package com.sesoc.secret.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sesoc.secret.dto.CommentsVO;
@Repository
public class CommentRepository {
	@Autowired
	SqlSession session;
	
	
	public int insertComment(CommentsVO comments) {
		CommentMapper mapper = session.getMapper(CommentMapper.class);
		return mapper.insertComment(comments);
	}

}
