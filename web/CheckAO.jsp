<%@ page import="DAO.Status" %>
<%
    if(Status.s==0){
%><jsp:forward page="ReLogin.jsp"></jsp:forward>
<%
    }
%>
<%@ page import="DAO.OperatorDaoImpl" %>
<%@ page import="entities.Operator" %><%--
  Created by IntelliJ IDEA.
  User: donuric
  Date: 7/26/2017
  Time: 2:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String un = (String) request.getParameter("oname");
    String password = (String) request.getParameter("opass");

    OperatorDaoImpl operator = new OperatorDaoImpl();
    operator.addOpertor(new Operator(un, password, true));
%>
<jsp:include page="OperationsDone.jsp"/>

</body>
</html>
