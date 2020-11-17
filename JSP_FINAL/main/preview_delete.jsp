<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%@ page import = "buy.BuyDTO, buy.BuyDAO" %>

	<jsp:useBean id="dto" class= "buy.BuyDTO">
		<jsp:setProperty name="dto" property="*"/>
	</jsp:useBean>
<% 
	request.setCharacterEncoding("utf-8");
	int pno = Integer.parseInt(request.getParameter("pno")); 
	
	BuyDAO dbPro = BuyDAO.getInstance();
	dbPro.deletePreview(pno); 
	response.sendRedirect("buy_list.jsp"); 
%> 