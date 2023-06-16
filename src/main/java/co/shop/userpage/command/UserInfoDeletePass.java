package co.shop.userpage.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.shop.common.Command;

public class UserInfoDeletePass implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		//일단 수행되면 main으로 가게 test
		return "user/userInfoDeletePass";
	}

}
