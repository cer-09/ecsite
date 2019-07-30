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
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

	<title>ItemDeleteConfirm画面</title>


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
	</style>
	<script type="text/javascript">
	function submitAction(url){
		$('form').attr('action', url);
		$('form').submit();
	}
	</script>
</head>
<body>

<div id="header">
		<div id="pr">
		</div>
</div>

	<div id="main">
		<div id="top">
			<p>ItemDelete</p>
		</div>
		<div>
			<s:form>
					<p>ID<s:property value="id"/>の商品を削除します。</p>
					<p>よろしいですか？</p>
					<tr>
						<td>
							<input type="button" value="キャンセル" onclick="submitAction('ItemDetailsAction')"/>
						</td>
						<td>
							<input type="button" value="OK" onclick="submitAction('ItemDeleteConfirmAction')"/>
						</td>
						<s:hidden name="id" value="%(id)"/>
					</tr>
			</s:form>
		</div>
		<div>
			<p>前画面に戻る場合は<a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
			<p>マイページは<a href='<s:url action="MyPageAction"/>'>こちら</a></p>
		</div>
	</div>
	<div id="footer">
		<div id="pr">
		</div>
	</div>
</body>
</html>