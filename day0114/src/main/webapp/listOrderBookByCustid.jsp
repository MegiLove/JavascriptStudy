<%@page import="com.thoughtworks.xstream.XStream"%>
<%@page import="com.sist.vo.OrderBookInfo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sist.dao.BookDao"%>
<%@ page language="java" contentType="application/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
   int custid = Integer.parseInt(request.getParameter("custid"));
   //int custid = 1;
   BookDao dao = new BookDao();
   ArrayList<OrderBookInfo> list = dao.listOrderBook(custid);
   XStream xStream = new XStream();
   xStream.alias("book",OrderBookInfo.class);
   
%>
<%= xStream.toXML(list) %>

