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

	<title>ItemCreate画面</title>


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

	#text-link{
		display: inline-block;
		text-align: center;
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
			<p>ItemCreate</p>
		</div>
		<div>
			<s:if test="errorMessage !=''">
				<s:property value="errorMessage" escape="false"/>
			</s:if>
			<table>
			<s:form action="ItemCreateConfirmAction">
				<tr>
					<td>
						<label>アイテム名:</label>
					</td>
					<td>
						<input type="text" name="itemName" value=""/>
					</td>
				</tr>
				<tr>
					<td>
						<label>価格:</label>
					</td>
					<td>
						<input type="text" name="itemPrice" value=""/>
							<span>円</span>
					</td>
				</tr>
				<tr>
					<td>
							<span>在庫</span>
						</td>
						<td>
							<input type="text" name="itemStock" value=""/>
								<span>個</span>
						</td>
				</tr>
				<s:submit value="登録"/>
			</s:form>
			</table>
			<div>
				<span>前画面に戻る場合は</span>
				<a href='<s:url action="HomeAction"/>'>こちら</a>
			</div>
		</div>
	</div>

	<div id="footer">
		<div id="pr">
		</div>
	</div>
</body>
</html>