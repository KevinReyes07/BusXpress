﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="BusXpress.ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="Font-awesome/css/fontawesome.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,400&display=swap" rel="stylesheet" />
    <link href="EstilosCss/Login.css" rel="stylesheet" />
    <script src="SweetAlert/sweetalert2.all.min.js"></script>
    <script src="SweetAlert/sweetalert2.js"></script>
    <title>Recuperar Usuario</title>
</head>
<body>
    <form runat="server">

        <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
            <!-- Brand -->
            <a class="navbar-brand" href="#">BusXpress</a>

<%--            <asp:Button ID="btnregistro" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Login" OnClick="btnregistro_Click" />--%>
            <br />
            <br />
            
        </nav>
        <div class="my-content">
            <div class="container">


                <div class="row">
                    <div class="col-sn-12">
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3 myform-cont">
                        <h1>Enter Token</h1>
                        <div class="myform-top">
                            <div class="myform-top-left">
            <br />

                                <h3>Forgot your password?</h3>
                                <p>Recover ir easily. </p>
                            </div>
                            <div class="myform-top-reght">
                                <%--<i class="fas fa-key"></i>--%>
                            </div>
                        </div>
                        <div class="myform-bottom">
                            <form role="form" action="" method="post" class="">
            <br />

                                <div class="form-group">
                                    <asp:TextBox ID="txtpassword1" runat="server" placeholder="Enter Password..." type="text" class="form-control" />
                                </div>


                                 <div class="form-group">
                                    <asp:TextBox ID="txtpassword2" runat="server" placeholder="Repeat Password..." type="text" class="form-control" />
                                </div>



                                <asp:Button ID="Change_Click" runat="server" Text="Change password" OnClick="Change_Click_Click" />



                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
        <script src="js/bootstrap.min.js"></script>
    </form>
</body>
</html>
