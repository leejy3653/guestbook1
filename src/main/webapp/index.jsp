<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="kr.co.itcen.guestbook.dao.GuestBookDao"%>
<%@ page import="kr.co.itcen.guestbook.vo.GuestBookVo"%>

<%
	List<GuestBookVo> list = new GuestBookDao().getList();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/add.jsp" method="post">

		<table border=1 width=500>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
				<td>비밀번호</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td colspan=4><textarea name="contents" cols=60 rows=5></textarea></td>
			</tr>
			<tr>
				<td colspan=4 align=right><input type="submit" value="등록 "></td>
			</tr>
		</table>
	</form>
	<br>
	<%
		for (GuestBookVo Vo : list) {
			//for(int i = 0; i < list.size(); i++){
	%>

	<table width=510 border=1>
		<tr>
			<td>[<%=Vo.getNo()%>]
			</td>
			<td><%=Vo.getName()%></td>
			<td><%=Vo.getReg_date()%></td>
			<td><a href="deleteform.jsp?no=<%=Vo.getNo()%>">삭제</a></td>
		</tr>
		<tr>
			<td colspan=4><%=Vo.getContents().replaceAll("\n", "<br>") %><!-- 개행 -->
			</td>

		</tr>
	</table>
	<%
		}
	%>
</body>
</html>