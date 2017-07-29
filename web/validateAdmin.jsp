<%@page import="DAO.*" %>
<%@page import="DB_Project.*" %>
<%@page import="entities.*" %>
<%@page import="Utilities.*" %>
<%@page import="DAO.Status" %>

<html>
<head></head>
<body>                    <%
                        String u = request.getParameter("username");
                        String p = request.getParameter("password");
                        int valid = 0;
                        AdminDaoImpl admin = new AdminDaoImpl();
                        OperatorDaoImpl operator = new OperatorDaoImpl();
                        if(admin.validate(new Admin(u, p))) {
                                Status.s=1;
                            session.setAttribute("uname",u);
                          %>

                                    <jsp:forward page="Division.jsp" />
                        <%
                        }else if(operator.validate(u,p)){
                            session.setAttribute("uname",u);
                        %>  <jsp:forward page="Division1.jsp" />
                        <%}

                        else {

                            out.print("Invalid username or password");
                        %>  <jsp:include page="MainPage.jsp" />
                           <% }

                        out.println("");

                    %>
                </center>

</body>
</html>