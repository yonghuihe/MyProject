package com.eloan.business.domain;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.eloan.base.domain.BaseDomain;
import com.eloan.base.domain.Logininfo;
import com.eloan.business.util.BidConst;

import lombok.Getter;
import lombok.Setter;

/**
 * 还款计划：记录借款每月的还款记录，针对于借款用户的
 * 
 * @author yonghui
 *
 */
@Setter
@Getter
public class PaymentSchedule extends BaseDomain {

	private static final long serialVersionUID = 1L;

	private Date deadLine; // 本期截止日期
	private Date payDate; // 还款日期
	private BigDecimal totalAmount = BidConst.ZERO; // 本期还款金额
	private BigDecimal principal = BidConst.ZERO; // 本期还款本金
	private BigDecimal interest = BidConst.ZERO; // 本期还款利息
	private int monthIndex; // 第几期还款
	private int state; // 本期还款状态

	private List<PaymentScheduleDetail> details = new ArrayList<>();// 包含的还款计划明细

	private int bidRequestType; // 借款类型
	private int returnType; // 还款方式
	private Long bidRequestId; // 借款对象
	private Logininfo borrowUser; // 借款人/还款人
	private String bidRequestTitle; // 借款标题

	public String getStateDisplay() {
		switch (state) {
		case BidConst.PAYMENT_STATE_NOMAL:
			return "正常贷款";
		case BidConst.PAYMENT_STATE_DONE:
			return "已还";
		case BidConst.PAYMENT_STATE_OVERDUE:
			return "逾期";
		default:
			return "未知";
		}
	}

}
