<%@ page import="DB_Project.*,DAO.*,Utilities.*,entities.*"%>
<%@ page import="java.sql.SQLException" %>
<%@ page import="static java.sql.DriverManager.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.PrintWriter" %>

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

                <li><a href="FindSpare.jsp" rel="tab3">Find Spare Part</a></li>
                <li><a href="RemoveSpare.jsp" rel="tab4" class="selected">Remove Spare Part</a></li>
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
                        String id=request.getParameter("sid");
                        int i=Integer.parseInt(id);
                        Connection con = null;
                        PreparedStatement ps = null;
                        //ResultSet rs = null;
                        out.println("Operation Done Successfully");
                        try{
                            Class.forName(Constants.UNAME);
                            con = DriverManager.getConnection
                                    (Constants.URL, Constants.UID, Constants.PASSWORD);
                            con.setAutoCommit(false);

                            String sql = "DELETE from spareparts WHERE sparepartid="+i;

                            ps = con.prepareStatement(sql);
                            System.out.print("deleted");
                            ps.executeUpdate();
                            con.commit();
                            System.out.print("DELETE from spareparts WHERE sparepartid="+i);

                        }
                        catch (ClassNotFoundException f) {
                            f.printStackTrace();
                        }catch(SQLException e) {
                            System.out.println("OOPs error occured in connecting database " + e.getMessage());

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

