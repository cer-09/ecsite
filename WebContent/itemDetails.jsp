<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Type" content="text/css"/>
	<meta http-equiv="Content-Script=type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>

	<title>ItemDetails画面</title>


	<style type="text/css">
	body{
		margin: 0;
		paddiong: 0;
		line-height: 1.6;
		letter-spacing: 1px;
		font-family: Verdana, Helvetica, sans-serit;
		font-size: 12px;
		color: #333;
		background: #fff;
	}

	table{
		text-align: center;
		margin: 0 auto;
	}

	#top{
		width: 780px;
		margin: 30px auto;
		border: 1px solid #333;
	}

	#header{
		width: 100%;
		height: 80px;
		background-color: black;
	}

	#main{
		width: 100%;
		height: 500px;
		text-align: center;
	}

	#footer{
		width: 100%;
		height: 80px;
		background-color: black;
		clear: both;
	}

	#text-right{
		display: inline-block;
		text-align: right;
	}
	</style>
</head>
<body>

	<div id="header">
			<div id="pr">
			</div>
		</div>

		<div id="main">
			<div id="top">
				<p>itemDetails</p>
			</div>
			<div>

				<s:if test="itemDetailsDTO == null">
					<h3>商品の詳細情報はありません。</h3>
				</s:if>
				<s:elseif test="message == null">
					<h3>商品情報は以下になります。</h3>

					<table style="border-color: black; border-style: solid; border-width: 1px;">
						<tr>
							<th>id</th>
							<td><s:property value="itemDetailsDTO.id"/></td>
						</tr>
						<tr>
							<th>商品名</th>
							<td><s:property value="itemDetailsDTO.itemName"/></td>
						</tr>
						<tr>
							<th>値段</th>
							<td><s:property value="itemDetailsDTO.itemPrice"/><span>円</span></td>
						</tr>
						<tr>
							<th>在庫</th>
							<td><s:property value="itemDetailsDTO.itemStock"/><span>個</span></td>
						</tr>
						<tr>
							<th>登録日</th>
							<td><s:property value="itemDetailsDTO.insert_date"/></td>
						</tr>
						<tr>
							<th>更新日</th>
							<td><s:property value="itemDetailsDTO.update_date"/></td>
						</tr>
					</table>

					<s:form action="ItemDeleteConfirmAction">
						<s:hidden name="id" value="%{id}"/>
						<s:submit value="削除"/>
					</s:form>

				</s:elseif>

				<div id="text-right">
					<p><a href='<s:url action="ItemListAction"/>'>戻る</a></p>
				</div>
			</div>
		</div>
		<div id="footer">
			<div id="pr">
			</div>
		</div>
</body>
</html>