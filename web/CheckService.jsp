<%--
  Created by IntelliJ IDEA.
  User: donuric
  Date: 7/27/2017
  Time: 10:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="DAO.OperatorDaoImpl" %>
<%@ page import="entities.Operator" %>
<%@ page import="DAO.VehicleDaoImpl" %>
<%@ page import="entities.Vehicle" %>
<%@ page import="DAO.ServiceDaoImpl" %>
<%@ page import="entities.Service" %><%--
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
    double km = Double.parseDouble(request.getParameter("km"));
    int sn = Integer.parseInt(request.getParameter("sn"));
    String emo = (String) request.getParameter("emo");
    ServiceDaoImpl s=new ServiceDaoImpl();
    s.addService(new Service(rg,km,sn,emo));
%>
<jsp:include page="OperationsDone1.jsp"/>

</body>
</html>

