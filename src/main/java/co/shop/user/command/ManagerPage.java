package co.shop.user.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.shop.common.Command;
import co.shop.kakaopay.service.KakaopayService;
import co.shop.kakaopay.service.Impl.KakaopayServiceImpl;

public class ManagerPage implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		KakaopayService ks = new KakaopayServiceImpl();
		int totalMoney = ks.todayMoney();
		request.setAttribute("totalMoney", totalMoney);
		return "mypage/managerpage";
	}

}
