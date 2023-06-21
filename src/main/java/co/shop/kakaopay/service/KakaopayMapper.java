package co.shop.kakaopay.service;

public interface KakaopayMapper {
	int todayMoney();
	int kakaopayInsert(KakaopayVO vo);
	int depositInsert(KakaopayVO vo);
}
