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
        out.print("Yes u have entered");
%><jsp:forward page="ReLogin.jsp"></jsp:forward>
<%
    }
%>
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
<%
    if(Status.s==0){
        out.print("Yes u have entered");
%><jsp:forward page="ReLogin.jsp"></jsp:forward>
<%
    }
%>
<div id="templatemo_container">
    <div id="templatemo_menu">
        <div class="indentmenu">
            <ul>

                <li><a href="AddOperator.jsp" rel="tab2" class="selected">Add Operator</a></li>
                <li><a href="BlockOperator.jsp" rel="tab3">Block Operator</a></li>
                <li><a href="Logout.jsp" rel="tab4">Logout</a></li>


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
                        <p style="font-family: fantasy">Enter Operator Username</p>
                        <p><input type="text" onpaste="return false;" name="oname" id="user" style="height:25px;width:220px;"/></p>
                        <p style="font-family: fantasy">Enter Operator Password</p>
                        <p><input type="text" onpaste="return false;" id="pass" style="height:25px;width:220px" name="opass"/></p>
                        <p></p>
                        <p ><input type="submit" value="Register" style="height:25px;width:100px;font-family: cursive" /> <input type="reset" value="Cancel" style="height:25px;width:100px;font-family: cursive" /></p>
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
