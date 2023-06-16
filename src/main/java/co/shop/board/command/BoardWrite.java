package co.shop.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.shop.common.Command;

public class BoardWrite implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		return "board/writeForm";
	}

}
