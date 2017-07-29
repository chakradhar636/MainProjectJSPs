<%@ page import="DB_Project.*,DAO.*,Utilities.*,entities.*"%>
<%@ page import="java.sql.SQLException" %>
<%@ page import="static java.sql.DriverManager.*" %>
<%@ page import="java.sql.*" %>

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
<%@ page import="DAO.Status" %>
<%
    if(Status.s==0){
%><jsp:forward page="ReLogin.jsp"></jsp:forward>
<%
    }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title> Project Work Find Spare</title>
    <meta name="keywords" content="VOIP Company, css template, free web design layout" />
    <meta name="description" content="VOIP Company, css template, free web design layout from TemplateMo.com" />
    <link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/tabcontent.css"/>
    <link rel="icon" type="image/ico" href="images/kk.ico" />

    <script>
        function Checked()
        {
            if((document.getElementById("sid").value)=="")
            {
                alert("Please Enter Spare Part ID");
                document.getElementById("sid").focus();
                return false;
            }
        }
    </script>

</head>
<body><br />

<div id="templatemo_container">
    <div id="templatemo_menu">
        <div class="indentmenu">
            <ul>
                <li><a href="Division.jsp" rel="tab2">Modules</a></li>

                <li><a href="FindSpare.jsp" rel="tab3" class="selected">Find Spare Part</a></li>
                <li><a href="RemoveSpare.jsp" rel="tab4">Remove Spare Part</a></li>
                <li><a href="ViewSpare.jsp" rel="tab5">View Spare Parts</a></li>

                <li><a href="Logout.jsp" rel="tab6">Logout</a></li>


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
                    PreparedStatement ps = null;
                    ResultSet rs = null;
                    String n = request.getParameter("sid");

                    try {
                    Class.forName(Constants.UNAME);
                    con = DriverManager.getConnection
                    (Constants.URL, Constants.UID, Constants.PASSWORD);
                    String sql = "Select * from spareparts where sparepartid = ?";
                    ps = con.prepareStatement(sql);
                    ps.setString(1, n);
                    ps.execute();
                    rs = ps.getResultSet();
                    if(rs.next()) {
                    out.print("<table align=\"center\" border=1>");

                    out.print("<th>Sparepart ID</th><th>SparePart Name</th><th>Vehicle Model</th>");

                    out.print("<tr><td>"+rs.getObject(1).toString()+"</td>");
                        out.print("<td>"+rs.getObject(2).toString()+"</td>");
                        out.print("<td>"+rs.getObject(6).toString()+"</td></tr>");
                    out.println("</table>");
                    }
                    else{
                    }

                    } catch (SQLException e) {
                    System.out.print("Data Base Error"+e.getMessage());
                    } catch (ClassNotFoundException f){
                    f.printStackTrace();
                    }
                    %>
                </center>
            </div>
            <div class="cleaner">&nbsp;</div>
        </div>
        <div id="templatemo_footer">
            <%
                out.println("Vehicle Management System");
            %>
        </div> <!-- end of footer -->
    </div>
</div>
</body>
</html>

