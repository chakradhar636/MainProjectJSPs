<%--
  Created by IntelliJ IDEA.
  User: donuric
  Date: 7/26/2017
  Time: 8:05 PM
  To change this template use File | Settings | File Templates.
--%>
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
    <title> Vehicle</title>
    <meta name="keywords" content="VOIP Company, css template, free web design layout" />
    <meta name="description" content="VOIP Company, css template, free web design layout from TemplateMo.com" />
    <link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/tabcontent.css"/>
    <link rel="icon" type="image/ico" href="images/kk.ico" />

    <script>
        function Checked()
        {
            if((document.getElementById("rg").value)=="")
            {
                alert("Please Enter Registration number");
                document.getElementById("rg").focus();
                return false;
            }
            if((document.getElementById('on').value)=="")
            {
                alert("Please Enter owner name");
                document.getElementById('on').focus();
                return false;
            }
            if((document.getElementById("vm").value)=="")
            {
                alert("Please Enter Vehicle model");
                document.getElementById("vm").focus();
                return false;
            }
            if((document.getElementById("date").value)=="")
            {
                alert("Please Enter Purchase date");
                document.getElementById("date").focus();
                return false;
            }
            if((document.getElementById("price").value)=="")
            {
                alert("Please Enter Price");
                document.getElementById("price").focus();
                return false;
            }
            if((document.getElementById("tax").value)=="")
            {
                alert("Please Enter Tax");
                document.getElementById("tax").focus();
                return false;
            }
            if((document.getElementById("numbers").value)=="")
            {
                alert("Please Enter No. units");
                document.getElementById("numbers").focus();
                return false;
            }
        }
    </script>


</head>
<body><br />
<body><br />

<div id="templatemo_container">
    <div id="templatemo_menu">
        <div class="indentmenu">
            <ul>
                <li><a href="Vehicle.jsp" rel="tab2" class="selected">Vehicle</a></li>
                <li><a href="DisplayVehicles.jsp?page=1" rel="tab3">Display Vehicles</a></li>
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
                    <form action ="CheckVehicle.jsp" method="post" onsubmit="return Checked();" style="margin-left: 150px;float: left">
                        <p><h4>Enter Vehicle Details</h4></p>

                        <table border="None">
                            <tr><td><p style="font-family: fantasy">Enter Vehicle Registration num</p></td>
                                <td><p><input type="text" onpaste="return false;" name="rg" id="rg" style="height:25px;width:220px;"/></p></td></tr>
                            <tr><td><p style="font-family: fantasy">Enter Owner Name</p></td>
                            <td><p><input type="text" onpaste="return false;" id="on" style="height:25px;width:220px" name="on"/></p></td></tr>
                            <tr><td><p style="font-family: fantasy">Enter Vehicle Model</p></td>
                            <td><p><input type="text" onpaste="return false;" name="vm" id="vm" style="height:25px;width:220px;"/></p></td></tr>
                            <tr><td><p style="font-family: fantasy">Enter Purchase date</p></td>
                            <td><p><input type="text" onpaste="return false;" name="date" id="date" style="height:25px;width:220px;"/></p></td></tr>
                            <tr><td><p style="font-family: fantasy">Enter Price</p></td>
                            <td><p><input type="text" onpaste="return false;" name="price" id="price" style="height:25px;width:220px;"/></p></td></tr>
                            <tr><td><p style="font-family: fantasy">Enter Tax</p></td>
                            <td><p><input type="text" onpaste="return false;" name="tax" id="tax" style="height:25px;width:220px;"/></p></td></tr>
                            <tr><td><p style="font-family: fantasy">Enter No. Units</p></td>
                            <td><p><input type="text" onpaste="return false;" name="numbers" id="numbers" style="height:25px;width:220px;"/></p></td></tr>
                        </table>
                        <p></p>
                        <p ><input type="submit" value="Order" style="height:25px;width:100px;font-family: cursive" /> <input type="reset" value="Cancel" style="height:25px;width:100px;font-family: cursive" /></p>
                    </form>
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
