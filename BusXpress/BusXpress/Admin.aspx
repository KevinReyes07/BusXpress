<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="BusXpress.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/admin.css" rel="stylesheet" />
    <script src="js/admin.js"></script>
    <title>Admin</title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 501px;
            width: 416px;
            height: 354px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="sse1">
                <div>
        <div>
            <h2 class="admin-title">Admin<asp:Button ID="AdminLogOut" runat="server" Text="Log Out" class="AdminLogOut"  Height="30px" Width="68px" OnClick="AdminLogOut_Click"/> </h2>
            
  <div id="sses1">
    <ul>
      <li><a href="/Tickets.aspx">Tickets</a></li>
      <li><a href="/Delete_tickets.aspx">Delete</a></li>
      <li><a href="/Edit_tickets.aspx">Edit</a></li>
      <%--<li><a href="/Delete_tickets.aspx">Delete</a></li>--%>
    </ul>
  </div>
</div>

            <%--<div id="sses1">
      
    <ul>
      <%--<li><a href="#">Admin</a></li>--%>
    <%--  <li><a href="#">Panel</a></li>--%>
         
     <%-- <li><a href="/Tickets.aspx">Tickets</a></li>
      <li><a href="/Usersadmin.aspx">Users</a></li>
      <li><a href="/Edit_tickets.aspx">Edit</a></li>--%>
       <%--<li><a href="/Delete_tickets.aspx">Delete</a></li>--%>
    <%--</ul>

  </div>
</div>--%>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
            <div
                <figure>
             &nbsp;</figure><img src="images/busito.png" alt="Admin image" class="auto-style1"></div>
        </div>
        </div>
    </form>
</body>
</html>
