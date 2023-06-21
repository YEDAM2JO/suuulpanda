package co.shop.kakaopay.service;

public interface KakaopayService {
	int todayMoney();
	int kakaopayInsert(KakaopayVO vo);
	int depositInsert(KakaopayVO vo);
}
