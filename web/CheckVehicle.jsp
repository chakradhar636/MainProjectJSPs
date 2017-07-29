<%@ page import="DAO.OperatorDaoImpl" %>
<%@ page import="entities.Operator" %>
<%@ page import="DAO.VehicleDaoImpl" %>
<%@ page import="entities.Vehicle" %><%--
  Created by IntelliJ IDEA.
  User: donuric
  Date: 7/26/2017
  Time: 2:56 PM
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
    String vm = (String) request.getParameter("vm");
    String date = (String) request.getParameter("date");
    double price=Double.parseDouble(request.getParameter("price"));
    double tax=Double.parseDouble(request.getParameter("tax"));
    Integer numbers=Integer.parseInt(request.getParameter("numbers"));

    VehicleDaoImpl veh=new VehicleDaoImpl();
    veh.addVehicle(new Vehicle(rg,on,vm,date,price,tax,numbers));
%>
<jsp:include page="OperationsDone1.jsp"/>

</body>
</html>
