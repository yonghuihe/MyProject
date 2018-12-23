<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<div class="ui_tb_h30">
	<div class="ui_flt" style="height: 30px; line-height: 30px;">
		共有 <span class="ui_txt_bold04"><s:property value="#result.totalCount" /></span> 条记录，当前第 <span
			class="ui_txt_bold04"><s:property value="#result.currentPage"/>/<s:property value="#result.totalPage"/></span> 页
	</div>
	<div class="ui_frt">
		<input type="button" value="首页" class="ui_input_btn01 btn_page" data-page="1"/> 
		<input type="button" value="上一页" class="ui_input_btn01 btn_page" data-page="${result.prev}"/> 
		<input type="button" value="下一页" class="ui_input_btn01 btn_page" data-page="${result.next}"/> 
		<input type="button" value="尾页" class="ui_input_btn01 btn_page" data-page="${result.totalPage}"/> 
		<s:select list="{3,10,20,50}" name="qo.pageSize" cssClass="ui_select02" />
		转到第<s:textfield name="qo.currentPage" cssClass="ui_input_txt01" />页
		<input type="button" class="ui_input_btn01 btn_page" value="跳转" />
	</div>
</div>
