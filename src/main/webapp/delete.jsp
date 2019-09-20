<%@ page import="kr.co.itcen.guestbook.dao.GuestBookDao"%>
<%@ page import="kr.co.itcen.guestbook.vo.GuestBookVo"%>

<%
	request.setCharacterEncoding("UTF-8");
	
	String no = request.getParameter("no");
	String password = request.getParameter("password");
	
	GuestBookVo Vo = new GuestBookVo();
	Vo.setNo(Long.parseLong(no));
	Vo.setPassword(password);
	
	new GuestBookDao().delete(Vo);
	response.sendRedirect(request.getContextPath());
	
%>
