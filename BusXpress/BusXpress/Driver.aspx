<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Driver.aspx.cs" Inherits="BusXpress.Driver" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link href="css/driver.css" rel="stylesheet" />
    <script src="js/driver.js"></script>
    <title>Driver</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="sse1">
                 <div>
                    <h2 class="driver-title">Driver<asp:Button ID="DriverLogOut" runat="server" Text="Log Out" class="DriverLogOut" Height="30px" Width="68px" OnClick="DriverLogOut_Click" />
                        </h2>
        </div>
                <div id="sses1">
    <ul>
      <li><a href="#">Routes</a></li>
      <li><a href="/Usersdriver.aspx">Users</a></li>
      <%--<li><a href="#">Potofolio</a></li>
      <li><a href="#">Contact</a></li>--%>
    </ul>
  </div>
                </div>
        </div>
    </form>
</body>
</html>