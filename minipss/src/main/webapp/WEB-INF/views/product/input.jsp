<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<title>信息管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style/authority/basic_layout.css" rel="stylesheet" type="text/css">
<link href="style/authority/common_style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery/jquery.js"></script>
<script type="text/javascript" src="js/authority/commonAll.js"></script>
<script type="text/javascript" src="js/plugins/artDialog/artDialog.js?skin=blue"></script>
<script type="text/javascript" src="js/plugins/jquery-vaildate/jquery.validate.min.js"></script>
</head>
<body>
<%@include file="../common/common-msg.jsp" %>
<s:form name="editForm" action="product_save" method="post" id="editForm" enctype="multipart/form-data">
	<div id="container">
		<div id="nav_links">
			<span style="color: #1A5CC6;">货品编辑</span>
			<div id="page_close">
				<a>
					<img src="images/common/page_close.png" width="20" height="20" style="vertical-align: text-top;"/>
				</a>
			</div>
		</div>
		<div class="ui_content">
			<table cellspacing="0" cellpadding="0" width="100%" align="left" border="0">
				<s:hidden name="product.id" />
				<tr>
					<td class="ui_text_rt" width="140">货品编号</td>
					<td class="ui_text_lt">
						<s:textfield name="product.sn" cssClass="ui_input_txt02"/>
					</td>
				</tr>
				<tr>
					<td class="ui_text_rt" width="140">货品名称</td>
					<td class="ui_text_lt">
						<s:textfield name="product.name" cssClass="ui_input_txt02"/>
					</td>
				</tr>
				<tr>
					<td class="ui_text_rt" width="140">品牌</td>
					<td class="ui_text_lt">
						<s:select list="#brands" cssClass="ui_select01" name="product.brand.id" listKey="id" listValue="name"/>
					</td>
				</tr>
				<tr>
					<td class="ui_text_rt" width="140">默认销售价</td>
					<td class="ui_text_lt">
						<s:textfield name="product.salePrice" cssClass="ui_input_txt02"/>
					</td>
				</tr>
				<tr>
					<td class="ui_text_rt" width="140">默认成本价</td>
					<td class="ui_text_lt">
						<s:textfield name="product.costPrice" cssClass="ui_input_txt02"/>
					</td>
				</tr>
				<tr>
					<td class="ui_text_rt" width="140">说明</td>
					<td class="ui_text_lt">
						<s:textarea name="product.intro" cssClass="ui_area01" />
					</td>
				</tr>
				<tr>
					<td class="ui_text_rt" width="140">图片</td>
					<td class="ui_text_lt">
						<s:file name="pic" cssClass="ui_file" accept="image/*" />
						<s:if test="product.id!=null">
							<img src="<s:property value='product.smallPic' />" class="list_img" />
						</s:if>
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td class="ui_text_lt">
						&nbsp;<input type="submit" value="确定编辑" class="ui_input_btn01"/>
						&nbsp;<input id="cancelbutton" type="button" value="重置" class="ui_input_btn01"/>
					</td>
				</tr>
			</table>
		</div>
	</div>
</s:form>
</body>
</html>