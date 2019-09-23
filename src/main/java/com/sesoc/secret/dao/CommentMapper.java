package com.sesoc.secret.dao;

import java.util.ArrayList;

import com.sesoc.secret.dto.CommentsVO;
import com.sesoc.secret.dto.CommentsVO_img;

public interface CommentMapper {

	int insertComment(CommentsVO comments);

	ArrayList<CommentsVO_img> loadAllMemo(CommentsVO comments);

}
