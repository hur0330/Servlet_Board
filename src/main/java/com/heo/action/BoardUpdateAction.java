package com.heo.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.heo.dao.BoardDAO;
import com.heo.dto.BoardVO;

public class BoardUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		BoardDAO bDao = BoardDAO.getInstance();
		BoardVO bVo = new BoardVO();
		
		bVo.setName(request.getParameter("name"));
		bVo.setPass(request.getParameter("pass"));
		bVo.setSubject(request.getParameter("subject"));
		bVo.setContent(request.getParameter("content"));
		bVo.setNum(Integer.parseInt(request.getParameter("num")));
		
		bDao.updateBoard(bVo);
		response.sendRedirect("BoardServlet?command=board_list");
	}
	
}