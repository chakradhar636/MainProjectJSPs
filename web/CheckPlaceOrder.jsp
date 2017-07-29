<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="DAO.OrderDaoImpl" %>
<%@ page import="entities.Orders" %><%--
  Created by IntelliJ IDEA.
  User: donuric
  Date: 7/26/2017
  Time: 4:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="DAO.Status" %>
<%
    if(Status.s==0){
%><jsp:forward page="ReLogin.jsp"></jsp:forward>
<%
    }
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String rg = (String) request.getParameter("rg");
    String on = (String) request.getParameter("on");
    String yname = (String) request.getParameter("yname");
    String id = (String) request.getParameter("id");
    String vm = (String) request.getParameter("vm");
    String op = (String) request.getParameter("op");
    String d = (String) request.getParameter("date");
    Date date1 = new SimpleDateFormat("dd/MM/yyyy").parse(d);
    int unit = Integer.parseInt(request.getParameter("unit"));
    double price = Double.parseDouble(request.getParameter("price"));
    double tax = Double.parseDouble(request.getParameter("tax"));
    String spid = (String) request.getParameter("spid");
    String spnm = (String) request.getParameter("spnm");
    OrderDaoImpl ord = new OrderDaoImpl();
    ord.placeOrder(new Orders(rg,on,yname, id, vm, spid, spnm, op, unit, price, tax, date1));
%><jsp:forward page="OperationsDone.jsp">

</jsp:forward>

</body>
</html>
