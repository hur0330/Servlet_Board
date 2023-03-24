package com.heo.controller;

import com.heo.action.Action;
import com.heo.action.BoardListAction;
import com.heo.action.BoardPassCheckFormAction;
import com.heo.action.BoardViewAction;
import com.heo.action.BoardWriteAction;
import com.heo.action.BoardWriteFormAction;

public class ActionFactory {
	private ActionFactory() {};
	private static ActionFactory instance = new ActionFactory();
	
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		Action action = null;
		if(command.equals("board_list")) {
			action = new BoardListAction();
		} else if(command.equals("board_write_form")) {
			action = new BoardWriteFormAction();
		} else if(command.equals("board_write")) {
			action = new BoardWriteAction();
		} else if(command.equals("board_view")) {
			action = new BoardViewAction();
		} else if(command.equals("board_check_pass_form")) {
			action = new BoardPassCheckFormAction();
		}
		return action;
	}
}