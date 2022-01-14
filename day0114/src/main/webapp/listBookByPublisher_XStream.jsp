<%@page import="com.thoughtworks.xstream.XStream"%>
<%@page import="com.sist.vo.BookVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sist.dao.BookDao"%>
<%@ page language="java" contentType="application/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//출판사명을 전달받아 
	//해당 출판사에서 출간하는 모든 도서목록을 xml로 응답하도록 코드를 완성해 봅니다
	//완성하면 "3"
	
	String publisher = request.getParameter("publisher");
	//String publisher = "굿스포츠";
	BookDao dao = new BookDao();
	ArrayList<BookVO> list = dao.listBookByPublisher(publisher);
	XStream stream = new XStream();
	stream.alias("book", BookVO.class);
	String result= stream.toXML(list);
%>
<%= result %>