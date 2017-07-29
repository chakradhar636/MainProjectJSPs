<%--
  Created by IntelliJ IDEA.
  User: donuric
  Date: 7/26/2017
  Time: 4:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: donuric
  Date: 7/26/2017
  Time: 2:35 PM
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
    <title> Place Order</title>
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
                alert("Please Enter Reg Num");
                document.getElementById("rg").focus();
                return false;
            }
            if((document.getElementById("on").value)=="")
            {
                alert("Please Enter Owner Name");
                document.getElementById("on").focus();
                return false;
            }
            if((document.getElementById("id").value)=="")
            {
                alert("Please Enter Id");
                document.getElementById("id").focus();
                return false;
            }
            if((document.getElementById("yname").value)=="")
            {
                alert("Please Enter your name");
                document.getElementById("yname").focus();
                return false;
            }
            if((document.getElementById("vm").value)=="")
            {
                alert("Please Enter Vehicle Model");
                document.getElementById("vm").focus();
                return false;
            }
            if((document.getElementById("op").value)=="")
            {
                alert("Please Enter operation");
                document.getElementById("op").focus();
                return false;
            }
            if((document.getElementById("date").value)=="")
            {
                alert("Please Enter date");
                document.getElementById("date").focus();
                return false;
            }
            if((document.getElementById("unit").value)=="")
            {
                alert("Please Enter no. units");
                document.getElementById("unit").focus();
                return false;
            }
            if((document.getElementById("price").value)=="")
            {
                alert("Please Enter price");
                document.getElementById("price").focus();
                return false;
            }
            if((document.getElementById("tax").value)=="")
            {
                alert("Please Enter tax");
                document.getElementById("tax").focus();
                return false;
            }
            if((document.getElementById("spid").value)=="")
            {
                alert("Please Enter Sparepart ID");
                document.getElementById("spid").focus();
                return false;
            }
            if((document.getElementById("spnm").value)=="")
            {
                alert("Please Enter SparePart Name");
                document.getElementById("spnm").focus();
                return false;
            }

        }
    </script>

</head>
<body><br />
<%
    String s=(String) session.getAttribute("uname");
    if((s.equals("null"))){
%> <jsp:forward page="ReLogin.jsp"></jsp:forward>
<%
    }
%>
<div id="templatemo_container">
    <div id="templatemo_menu">
        <div class="indentmenu">
            <ul>

                <li><a href="PlaceOrder.jsp" rel="tab2" class="selected">Place Order</a></li>
                <li><a href="ViewOrders.jsp" rel="tab3">View Orders</a></li>
                <li><a href="SearchOrders.jsp" rel="tab4">Search Orders</a></li>
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
                    <form action ="CheckAO.jsp" method="post" onsubmit="return Checked();" style="margin-left: 150px;float: left">
                        <p><h4>Add Operator Details</h4></p>
                        <table border="none">
                            <tr><td><p style="font-family: fantasy">Enter Reg Num :</p></td>
                                <td><p><input type="text" onpaste="return false;" name="rg" id="rg" style="height:25px;width:220px;"/></p></td></tr>
                            <tr><td><p style="font-family: fantasy">Enter Owner Name:</p></td>
                                <td><p><input type="text" onpaste="return false;" name="on" id="on" style="height:25px;width:220px;"/></p></td></tr>
                            <tr><td><p style="font-family: fantasy">Enter ID :</p></td>
                            <td><p><input type="text" onpaste="return false;" name="id" id="id" style="height:25px;width:220px;"/></p></td></tr>
                            <tr><td><p style="font-family: fantasy">Enter Your Name :</p></td>
                            <td><p><input type="text" onpaste="return false;" id="yname" style="height:25px;width:220px" name="yname"/></p></td></tr>
                            <tr><td><p style="font-family: fantasy">Enter Vehicle Model :</p></td>
                            <td><p> <input type="text" onpaste="return false;" name="vm" id="vm" style="height:25px;width:220px;"/></p></td></tr>
                            <tr><td><p style="font-family: fantasy">Enter Operation :</p></td>
                            <td><p><input type="text" onpaste="return false;" name="op" id="op" style="height:25px;width:220px;"/></p></td></tr>
                            <tr><td><p style="font-family: fantasy">Enter Date(dd/mm/yyyy) :</p></td>
                            <td><p> <input type="text" onpaste="return false;" name="date" id="date" style="height:25px;width:220px;"/></p></td></tr>
                            <tr><td><p style="font-family: fantasy">Enter No. of Units :</p></td>
                            <td><p><input type="text" onpaste="return false;" name="unit" id="unit" style="height:25px;width:220px;"/></p></td></tr>
                            <tr><td><p style="font-family: fantasy">Enter Price :</p></td>
                            <td><p><input type="text" onpaste="return false;" name="price" id="price" style="height:25px;width:220px;"/></p></td></tr>
                            <tr><td><p style="font-family: fantasy">Enter Tax :</p></td>
                            <td><p><input type="text" onpaste="return false;" name="tax" id="tax" style="height:25px;width:220px;"/></p></td></tr>
                            <tr><td><p style="font-family: fantasy">Enter SparePart Id :</p></td>
                            <td><p><input type="text" onpaste="return false;" name="spid" id="spid" style="height:25px;width:220px;"/></p></td></tr>
                            <tr><td><p style="font-family: fantasy">Enter SparePart Name :</p></td>
                            <td><p><input type="text" onpaste="return false;" name="spnm" id="spnm" style="height:25px;width:220px;"/></p></td></tr>
                        </table>
                        <p ><input type="submit" value="Place Order" style="height:25px;width:100px;font-family: cursive" /> <input type="reset" value="Cancel" style="height:25px;width:100px;font-family: cursive" /></p>
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

