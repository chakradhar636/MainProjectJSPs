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
    <title> Division</title>
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
                <li><a href="home.jsp" rel="tab2" class="selected">Home</a></li>
                <li><a href="AdminLogin.jsp" rel="tab3">Admin Login</a></li>
                <li><a href="OperatorLogin.jsp" rel="tab4">Operator Login</a></li>
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
                <div class="indentmenu1">
                    <li><a href="Operators.jsp" rel="tab2" class="selected">Operators</a></li>
                    <li><a href="Orders.jsp">Orders</a> </li>
                    <li><a href="Spareparts.jsp" rel="tab3">SpareParts</a></li>
                    <li><a href="MainVehicle.jsp" rel="tab4">Vehicle</a></li>
                </div>
                <center>
                    <br>
                    <%
                        out.println("Welcome To Main Modules Please select from above....!");
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