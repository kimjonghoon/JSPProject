<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/loginCheck.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="Keywords" content="내정보수정" />
<meta name="Description" content="내정보수정" />
<title>내정보수정</title>
<link rel="stylesheet" href="../css/screen.css" type="text/css" />
<script type="text/javascript">
//<![CDATA[ 

function check() {
    //var form = document.getElementById("editAccountForm");
    //TODO 유효성 검사
    return true;
}

//]]> 
</script>
</head>
<body>

<div id="wrap">

    <div id="header">
		<%@ include file="../inc/header.jsp" %>
    </div>
    
    <div id="main-menu">
 		<%@ include file="../inc/main-menu.jsp" %>
    </div>
    
	<div id="container">
		<div id="content" style="min-height: 800px;">
		
<!-- 본문 시작 -->
<div id="url-navi">회원</div>
<h1>내정보수정</h1>
<p>
비밀번호외의 자신의 계정 정보를 수정할 수 있습니다.<br />
비밀번호는 <a href="changePasswd.jsp">비밀번호 변경</a>메뉴를 이용하세요.<br />
</p>
<form id="editAccountForm" action="editAccount_proc.jsp" method="post" onsubmit="return check()">
<table>
<tr>
	<td>이름</td>
	<td><input type="text" name="name" value="<%=user.getName() %>" /></td>
</tr>
<tr>
	<td>손전화</td>
	<td><input type="text" name="mobile" value="<%=user.getMobile() %>" /></td>
</tr>
<tr>
	<td>현재 비밀번호</td>
	<td><input type="password" name="passwd" /></td>
</tr>
<tr>
	<td colspan="2"><input type="submit" value="전송" /></td>
</tr>
</table>
</form>
<!-- 본문 끝 -->
		
		</div>
    </div>
    
    <div id="sidebar">
		<%@ include file="loginUsers-menu.jsp" %>
    </div>
    
    <div id="extra">
		<%@ include file="../inc/extra.jsp" %>
    </div>
    
    <div id="footer">
		<%@ include file="../inc/footer.jsp" %>
    </div>
        
</div>

</body>
</html>