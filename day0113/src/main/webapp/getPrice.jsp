<%@page import="com.sist.dao.BookDao"%> 
<%@ page language="java" contentType="text/plaine; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	//축구의 이해          대한미디어
	String bookname = request.getParameter("bookname");
	String publisher = request.getParameter("publisher");
	
	BookDao dao = new BookDao();
	int price= dao.getPrice(bookname, publisher);
%>
<%= price %>