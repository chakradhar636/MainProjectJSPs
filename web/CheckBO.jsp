<%--
  Created by IntelliJ IDEA.
  User: donuric
  Date: 7/26/2017
  Time: 4:25 PM
  To change this template use File | Settings | File Templates.
--%>
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
    OperatorDaoImpl operator = new OperatorDaoImpl();
    operator.blockOperator(un);
%>
<jsp:include page="OperationsDone.jsp"/>

</body>
</html>

