<%@ page import="DAO.*,entities.*,Utilities.*,DB_Project.*" %>
<%@ page import="static java.sql.DriverManager.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="DAO.Status" %><%
    if(Status.s==0){
%><jsp:forward page="ReLogin.jsp"></jsp:forward>
<%
    }
%>
<%--
  Created by IntelliJ IDEA.
  User: donuric
  Date: 7/26/2017
  Time: 4:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: donuric
  Date: 7/26/2017
  Time: 2:35 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title> View Spare</title>
    <meta name="keywords" content="VOIP Company, css template, free web design layout" />
    <meta name="description" content="VOIP Company, css template, free web design layout from TemplateMo.com" />
    <link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/tabcontent.css"/>
    <link rel="icon" type="image/ico" href="images/kk.ico" />

</head>
<body><br />

<div id="templatemo_container">
    <div id="templatemo_menu">
        <div class="indentmenu">
            <ul>

                <li><a href="FindSpare.jsp" rel="tab2">Find SparePart</a></li>
                <li><a href="RemoveSpare.jsp" rel="tab3">Remove SparePart</a></li>
                <li><a href="ViewSpare.jsp" rel="tab4" class="selected">View SpareParts</a></li>
                <li><a href="Logout.jsp" rel="tab5">Logout</a></li>


            </ul>
        </div>
    </div> <!-- end of mneu -->
    <div id="templatemo_banner"><br /><br />
    </div>
    <div id="templatemo_content">
        <div id="content_top"></div>
        <div class="templatemo_content_section_01">
            <div class="section_01_left">
                <center>
                    <%
                        Connection con = null;
                        Statement stmt = null;
                        ResultSet rs = null;
                        try {
                            Class.forName(Constants.UNAME);
                            con = getConnection
                                    (Constants.URL, Constants.UID, Constants.PASSWORD);
                            stmt = con.createStatement();
                            rs = stmt.executeQuery("SELECT * FROM spareparts");
                            // displaying records
                            out.print(" Spare Parts Table");
                            out.print("<table align=\"center\" border=1>");

                            out.print("<th>SparePart ID</th><th>SparePart Name</th><th>Vehicle Model</th>");

                            while (rs.next()) {
                                out.print("<center>");
                                out.print("<tr><td>"+rs.getObject(1).toString()+"</td>");
                                out.print("<td>"+rs.getObject(2).toString()+"</td>");
                                out.print("<td>"+rs.getObject(6).toString()+"</td></tr>");
                                out.print("</center>");
                            }
                        } catch (SQLException e) {
                            throw new ServletException("Servlet Could not display records.", e);
                        } catch (ClassNotFoundException e) {
                            throw new ServletException("JDBC Driver not found.", e);
                        } finally {
                            try {
                                if (rs != null) {
                                    rs.close();
                                    rs = null;
                                }
                                if (stmt != null) {
                                    stmt.close();
                                    stmt = null;
                                }
                                if (con != null) {
                                    con.close();
                                    con = null;
                                }
                            } catch (SQLException e) {
                            }
                        }
                    %>
                </center>
            </div>
            <div class="cleaner">&nbsp;</div>
        </div>

        <div id="templatemo_footer">
            <%
                out.print("<h3>");
                out.println("Vehicle Management System");
                out.print("</h3>");
            %>
        </div> <!-- end of footer -->
    </div>
</div>
</body>
</html>
