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

	<title>UserList画面</title>


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
			<p>UserListDeleteConfirm</p>
		</div>
		<div>
			<p>管理者以外のユーザーを削除します。よろしいですか？</p>
			<br>
				<p><s:form action="UserListAction">
					<s:submit value="キャンセル"/>
				</s:form></p>
				<p><s:form action="UserListDeleteComplete">
					<s:submit value="OK"/>
				</s:form></p>
		</div>
	</div>

	<div id="footer">
		<div id="pr">
		</div>
	</div>

</body>
</html>