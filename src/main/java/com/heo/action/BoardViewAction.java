package com.heo.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.heo.dao.BoardDAO;
import com.heo.dto.BoardVO;

public class BoardViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String num = request.getParameter("num");
		String url = "board_view.jsp";
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.readCountPlus(num);
		BoardVO bVo = bDao.selectBoardByNum(num);
		
		bVo.setReadcount(bVo.getReadcount()+1);
		
		request.setAttribute("boardone", bVo);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}