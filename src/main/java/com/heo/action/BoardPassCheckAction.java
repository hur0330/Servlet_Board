package com.heo.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.heo.dao.BoardDAO;

public class BoardPassCheckAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub				
		String num = request.getParameter("num");
		String pass = request.getParameter("pass");
		String message = "비밀번호가 맞지않습니다.";
		String url = null;
		BoardDAO bDao = BoardDAO.getInstance();
		boolean passCheck = bDao.checkPass(pass, num);
		
		if(passCheck==true) {
			url = "success_check.jsp";
		} else if(passCheck==false){
			request.setAttribute("message", message);
			url = "pass_check.jsp";			
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
	
}