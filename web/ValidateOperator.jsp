<%@page import="DAO.*" %>
<%@page import="DB_Project.*" %>
<%@page import="entities.*" %>
<%@page import="Utilities.*" %>
<html>
<head></head>
<body>                    <%
    String u = request.getParameter("username");
    String p = request.getParameter("password");
    int valid = 0;
    OperatorDaoImpl operator = new OperatorDaoImpl();
    if(operator.validate(u,p)){
        Status.s=1;
%>

<jsp:forward page="Division1.jsp" />
<%
}
else {
    out.print("Invalid username or password");
%>  <jsp:include page="MainPage.jsp" />
<% }

    out.println("");

%>
</center>

</body>
</html>