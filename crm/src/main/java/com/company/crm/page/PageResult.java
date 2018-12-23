package com.company.crm.page;

import java.util.List;

public class PageResult {

	private Long total;
	private List<?> rows;

	public PageResult() {
		super();
	}

	public PageResult(Long total, List<?> rows) {
		super();
		this.total = total;
		this.rows = rows;
	}

	public Long getTotal() {
		return total;
	}

	public void setTotal(Long total) {
		this.total = total;
	}

	public List<?> getRows() {
		return rows;
	}

	public void setRows(List<?> rows) {
		this.rows = rows;
	}

	@Override
	public String toString() {
		return "PageResult [total=" + total + ", rows=" + rows + "]";
	}

}
