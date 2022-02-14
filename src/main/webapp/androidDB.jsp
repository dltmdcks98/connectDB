<%@page import="java.util.ArrayList"%>
<%@page import="ex.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
   request.setCharacterEncoding("UTF-8");
   
   String returns = "";
   String type = request.getParameter("type");
   String vision = request.getParameter("vision_write");

%>
<%
   if (type == null) {
      return;
   }else if (type.equals("vision_write")) {
      System.out.println("get value."+vision);
      Vision_Write vision_board = Vision_Write.getWrite();
      returns = vision_board.write(vision);
      out.println(returns);
      System.out.println(returns);
   }else if (type.equals("vision_list")) {
      System.out.println("return data.");
      Vision_Board vision_board = Vision_Board.getVision_Board();
      returns = vision_board.select();
      out.println(returns);
     System.out.println(returns);
   }
%>