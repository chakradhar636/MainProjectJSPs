<%--
  Created by IntelliJ IDEA.
  User: donuric
  Date: 7/26/2017
  Time: 6:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="DAO.Status" %><%
    if(Status.s==0){
%><jsp:forward page="ReLogin.jsp"></jsp:forward>
<%
    }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title> Main Vehicle</title>
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
                <li><a href="DisplayVehicles.jsp?page=1" rel="tab3">DisplayVehicles</a></li>
                <li><a href="Service.jsp" rel="tab4">Service</a></li>
                <li><a href="DisplayService.jsp?page=1" rel="tab5">DisplayService</a></li>
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
                        out.println("Vehicle");
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
