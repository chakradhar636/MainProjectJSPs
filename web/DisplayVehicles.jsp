<%@ page import="Utilities.Constants" %>

<%@ page import="java.util.*,DAO.*" %>
<%@ page import="entities.Vehicle" %>
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
  Time: 1:53 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title> Display Vehicles</title>
    <meta name="keywords" content="VOIP Company, css template, free web design layout" />
    <meta name="description" content="VOIP Company, css template, free web design layout from TemplateMo.com" />
    <link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/tabcontent.css"/>
    <link rel="icon" type="image/ico" href="images/kk.ico" />
</head>
<body><br />
<body><br />

<div id="templatemo_container">
    <div id="templatemo_menu">
        <div class="indentmenu">
            <ul>
                <li><a href="Vehicle.jsp" rel="tab2">Vehicle</a></li>
                <li><a href="DisplayVehicles.jsp?page=1" rel="tab3" class="selected">Display Vehicles</a></li>
                <li><a href="Service.jsp" rel="tab4">Service</a></li>
                <li><a href="DisplayService.jsp?page=1" rel="tab5">Display Service</a></li>
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
                        String spageid=request.getParameter("page");
                        int pageid=Integer.parseInt(spageid);
                        int total=5;
                        if(pageid==1){}
                        else{
                            pageid=pageid-1;
                            pageid=pageid*total+1;
                        }
                        List<Vehicle> list=VehicleDisplay.getRecords(pageid,total);

                        out.print("<h1>Page No: "+spageid+"</h1>");
                        out.print("<table border='1' cellpadding='4' width='60%'>");
                        out.print("<tr><th>Reg Num</th><th>Owner Name</th><th>Vehicle Model</th><th>Purchase Date</th><th>Price</th><th>Tax</th><th>Units</th>");
                        for(Vehicle e:list){
                            out.print("<tr><td>"+e.getReg_num()+"</td><td>"+e.getOwner_name()+"</td><td>"+e.getVehicle_model()+"</td><td>"+e.getDate()+"</td><td>"+e.getPrice()+"</td><td>"+e.getTax()+"</td><td>"+e.getNumbers()+"</td></tr>");
                        }
                        out.print("</table>");
                    %>
                    <a href="DisplayVehicles.jsp?page=1">1</a>
                    <a href="DisplayVehicles.jsp?page=2">2</a>
                    <a href="DisplayVehicles.jsp?page=3">3</a>

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
