<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="Utilities.Constants" %>
<%@ page import="java.text.ParseException" %>
<%@ page import="java.sql.*" %>
<%@ page import="DAO.Status" %><%
    if(Status.s==0){
%><jsp:forward page="ReLogin.jsp"></jsp:forward>
<%
    }
%><%--
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
    <title> Project Work</title>
    <meta name="keywords" content="VOIP Company, css template, free web design layout" />
    <meta name="description" content="VOIP Company, css template, free web design layout from TemplateMo.com" />
    <link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/tabcontent.css"/>
    <link rel="icon" type="image/ico" href="images/kk.ico" />

    <script>
        function Checked()
        {
            if((document.getElementById("user").value)=="")
            {
                alert("Please Enter Username");
                document.getElementById("user").focus();
                return false;
            }
            if((document.getElementById('pass').value)=="")
            {
                alert("Please Enter Password");
                document.getElementById('pass').focus();
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

                <li><a href="home.jsp" rel="tab2">Home</a></li>
                <li><a href="AddOperator.jsp" rel="tab3" class="selected">Add Operator</a></li>
                <li><a href="BlockOperator.jsp" rel="tab4">Block Operator</a></li>
                <li><a href="PlaceOrder.jsp" rel="tab5">Place Order</a></li>
                <li><a href="SearchOrders.jsp" rel="tab6">Search Orders</a></li>
                <li><a href="ViewOrders.jsp" rel="tab7">View Orders</a></li>
                <li><a href="FindSpare.jsp" rel="tab8">Find SparePart</a></li>
                <li><a href="RemoveSpare.jsp" rel="tab9">Remove SparePart</a></li>
                <li><a href="ViewSpare.jsp" rel="tab10">View SpareParts</a></li>
                <li><a href="MainVehicle.jsp" rel="tab11">Vehicle Module</a></li>
                <li><a href="Logout.jsp" rel="tab12">Logout</a></li>



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
                        String sd1=(String )request.getParameter("d1");
                        String sd2=(String )request.getParameter("d2");
                        try{
                            Date d1 = new SimpleDateFormat("dd/MM/yyyy").parse(sd1);
                            Date d2 = new SimpleDateFormat("dd/MM/yyyy").parse(sd2);

                            Class.forName(Constants.UNAME);
                            con = DriverManager.getConnection
                                    (Constants.URL, Constants.UID, Constants.PASSWORD);
                            stmt = con.createStatement();
                            rs = stmt.executeQuery("SELECT * FROM orders");
                            out.print("<center>");

                            // displaying records
                            out.println("Orders Between "+d1+" "+d2);
                            out.print("<table align=\"center\" border=1>");
                            out.print("<th>Reg Num</th><th>Owner Name</th><th>Id</th><th>Done By</th><th>Vehicle Model</th><th>Operation</th><th>Date</th><th>Units</th><th>Price</th><th>tax</th><th>SparePartId</th><th>SparePartName</th>");

                            while (rs.next()) {
                                Date tempDate = new SimpleDateFormat("dd/MM/yyyy").parse(rs.getString("date"));
                                if (tempDate.after(d1) && tempDate.before(d2)) {
                                    out.print("<tr><td>" + rs.getObject(1).toString() + "</td>");
                                    out.print("<td>" + rs.getObject(2).toString() + "</td>");
                                    out.print("<td>" + rs.getObject(3).toString() + "</td>");
                                    out.print("<td>" + rs.getObject(4).toString() + "</td>");
                                    out.print("<td>" + rs.getObject(5).toString() + "</td>");
                                    out.print("<td>" + rs.getObject(6).toString() + "</td>");
                                    out.print("<td>" + rs.getObject(7).toString() + "</td>");
                                    out.print("<td>" + rs.getObject(8).toString() + "</td>");
                                    out.print("<td>" + rs.getObject(9).toString() + "</td>");
                                    out.print("<td>" + rs.getObject(10).toString() + "</td>");
                                    out.print("<td>" + rs.getObject(11).toString() + "</td>");
                                    out.print("<td>" + rs.getObject(12).toString() + "</td></tr>");

                                }}
                                out.print("</table>");
                            out.print("</center>");

                        } catch(ParseException e){
                            e.printStackTrace();
                        }catch (SQLException e) {
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
